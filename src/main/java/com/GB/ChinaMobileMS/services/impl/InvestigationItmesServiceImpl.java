package com.GB.ChinaMobileMS.services.impl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.dao.InvestigationItemsMapper;
import com.GB.ChinaMobileMS.entity.InvestigationItemsEntity;
import com.GB.ChinaMobileMS.entity.InvestigationScoreEntity;
import com.GB.ChinaMobileMS.entity.InvestigationScoreEntitySet;
import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationItemsService;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationScoreService;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationTableService;
@Service
public class InvestigationItmesServiceImpl implements InvestigationItemsService  {
	@Autowired
	private InvestigationItemsMapper investigationItemsMapper;
	@Autowired
	private InvestigationItemsService investigationitemsService;
	@Autowired
	private InvestigationScoreService investigationScoreService;
	@Autowired
	private InvestigationTableService investigationTableService;
	
	/**
	 * 插入考评项目
	 */
	@Override
	public int inserItems(List<InvestigationItemsEntity> investigationItemsEntityList, String userName,String investigationName) {
		List<InvestigationItemsEntity> list = new ArrayList<InvestigationItemsEntity>();
		if(!investigationItemsEntityList.isEmpty()&&investigationItemsEntityList!=null&&investigationName!=""){
			for(int i = 0; i <investigationItemsEntityList.size(); i++){
				if(investigationItemsEntityList.get(i).getInvestigationItemValue() != null&&investigationItemsEntityList.get(i).getInvestigationStanddard()!=null){
					list.add(investigationItemsEntityList.get(i));
				}
			}
			
			for(int i =0; i<list.size();i++){
					list.get(i).setInvestigationItemName(investigationName);
			}

				//插入表
				InvestigationTableEntity investigationtableEntity = new InvestigationTableEntity();
				investigationtableEntity.setInvestigationName(investigationName);
				investigationtableEntity.setCreateStaff(userName);
				investigationTableService.insertMessage(investigationtableEntity);//插入的同时返回主键
				
				for (int i = 0; i < list.size(); i++) {
							//设置考评项的对应的表格id
						list.get(i).setInvestigationId(investigationtableEntity.getInvestigationId());
				}
			}

		if(!list.isEmpty()&&list!=null)
			return investigationItemsMapper.insertInvestigationItems(list);
		else
			return 0;
	}

	@Override
	public List<InvestigationItemsEntity> getInvestigationItems(int investigationTableId) {
		return investigationItemsMapper.findInvestigationItemsByInvestigationTableId(investigationTableId);
	}

	@Override
	public boolean deleteInvestigationItemsByInvestigationId(int investigationId) {
		return investigationItemsMapper.deleteInvestigationItemsByInvestigationId(investigationId);
	}
	/**
	 * 统计考评项目
	 */
	@Override
	public List<InvestigationScoreEntitySet> getStatistics(int id) {
		int excellent = 0,good = 0,bad = 0;
		InvestigationScoreEntitySet investigationScoreEntitySet;
		List<InvestigationScoreEntitySet> investigationScoreEntitySetList = new ArrayList<InvestigationScoreEntitySet>();
		List<InvestigationItemsEntity> investigationItemsEntityList= investigationitemsService.getInvestigationItems(id);
		for(int i=0;i<investigationItemsEntityList.size();i++){
			List<InvestigationScoreEntity> investigationScoreEntityList=investigationScoreService.findByInvestigationItemId(investigationItemsEntityList.get(i).getInvestigationItemId());
			investigationScoreEntitySet=new InvestigationScoreEntitySet();
			investigationScoreEntitySet.setInvestigationItemValue(investigationItemsEntityList.get(i).getInvestigationItemValue());
			investigationScoreEntitySet.setInvestigationStanddard(investigationItemsEntityList.get(i).getInvestigationStanddard());
			if(investigationScoreEntityList==null||investigationScoreEntityList.isEmpty()){
				continue;
			}
			else{
				for(int j=0;j<investigationScoreEntityList.size();j++){
					investigationScoreEntitySet.setScoreId(investigationScoreEntityList.get(j).getScoreId());
					investigationScoreEntitySet.setInvestigationItemId(investigationScoreEntityList.get(j).getInvestigationItemId());
					investigationScoreEntitySet.setInvestigationUserName(investigationScoreEntityList.get(j).getInvestigationUserName());
					investigationScoreEntitySet.setGrade(investigationScoreEntityList.get(j).getGrade());
					if(investigationScoreEntityList.get(j).getGrade().equals("excellent"))
						++excellent;
					else if(investigationScoreEntityList.get(j).getGrade().equals("good"))
						++good;
					else  
						++bad;
				}
			}
			investigationScoreEntitySet.setExcellent(excellent);
			investigationScoreEntitySet.setGood(good);
			investigationScoreEntitySet.setBad(bad);
			investigationScoreEntitySetList.add(investigationScoreEntitySet);//加进去实体
			excellent=0;good=0;bad=0;//reset
			investigationScoreEntityList.clear();
		}
		for(int i=0;i<investigationScoreEntitySetList.size();i++){
			int total=investigationScoreEntitySetList.get(i).getExcellent()+investigationScoreEntitySetList.get(i).getGood()+investigationScoreEntitySetList.get(i).getBad();
			if(total==0){
				investigationScoreEntitySetList.get(i).setExcellentPercentage(0);
				investigationScoreEntitySetList.get(i).setGoodPercentage(0);
				investigationScoreEntitySetList.get(i).setBadPercentage(0);
			}
			else{
				
				double excellentTemp=(investigationScoreEntitySetList.get(i).getExcellent()*1.0/total)*100;
				double goodTemp=(investigationScoreEntitySetList.get(i).getGood()*1.0/total)*100;
				double badTemp=(investigationScoreEntitySetList.get(i).getBad()*1.0/total)*100;
				BigDecimal excellentPercentage=new BigDecimal(excellentTemp);
				BigDecimal goodPercentage=new BigDecimal(goodTemp);
				BigDecimal badPercentage=new BigDecimal(badTemp);
				investigationScoreEntitySetList.get(i).setExcellentPercentage(excellentPercentage.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue());//保留两位小数
				investigationScoreEntitySetList.get(i).setGoodPercentage(goodPercentage.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue());
				investigationScoreEntitySetList.get(i).setBadPercentage(badPercentage.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue());
			}
			
		}
		return investigationScoreEntitySetList;
	}

}
