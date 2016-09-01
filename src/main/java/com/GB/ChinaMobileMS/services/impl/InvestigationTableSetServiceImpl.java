package com.GB.ChinaMobileMS.services.impl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GB.ChinaMobileMS.entity.InvestigationTableEntity;
import com.GB.ChinaMobileMS.entity.InvestigationTableEntitySet;
import com.GB.ChinaMobileMS.entity.WaitForInvestigationUserEntity;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationTableService;
import com.GB.ChinaMobileMS.services.interfaces.InvestigationTableSetService;
@Service
public class InvestigationTableSetServiceImpl implements InvestigationTableSetService{
	@Autowired
	private InvestigationTableService investigationTableService;
	@Override
	//物业服务考评管理数据显示
	public List<InvestigationTableEntitySet> getInvestigationTableEntitySetList(String formatTime,
			List<WaitForInvestigationUserEntity> waitForInvestigationUserEntityList) throws Exception {
		List<InvestigationTableEntity> investigationTableEntityList  = new ArrayList<InvestigationTableEntity>();
		List<InvestigationTableEntitySet> investigationTableEntitySetList= new ArrayList<InvestigationTableEntitySet>();
		String nowTime = formatTime;
		for(int i=0;i<waitForInvestigationUserEntityList.size();i++){
			investigationTableEntityList.add(investigationTableService.getInvestigationTableEntityByid(waitForInvestigationUserEntityList.get(i).getInvestigationId()));
			//通过id获取到每一行的数据;
		}
		for(int i=0;i<investigationTableEntityList.size();i++){
			InvestigationTableEntitySet investigationTableEntitySet =  new InvestigationTableEntitySet();
			investigationTableEntitySet.setInvestigationTableName(investigationTableEntityList.get(i).getInvestigationName());
			String recoverTime=investigationTableEntityList.get(i).getRecoveryTime();
			if(compareDate(nowTime, recoverTime)||investigationTableEntityList.get(i).getStatus()==2)
				investigationTableEntitySet.setStatus(1);
			else
				investigationTableEntitySet.setStatus(0);
			//设置要显示的数据属性
			investigationTableEntitySet.setInvestigationTableName(investigationTableEntityList.get(i).getInvestigationName());
			investigationTableEntitySet.setCreateStaff(investigationTableEntityList.get(i).getCreateStaff());
			investigationTableEntitySet.setRecoveryTime(investigationTableEntityList.get(i).getRecoveryTime());
			investigationTableEntitySet.setIsFill(waitForInvestigationUserEntityList.get(i).getIsfill());
			investigationTableEntitySet.setInvestigationId(investigationTableEntityList.get(i).getInvestigationId());
			investigationTableEntitySetList.add(investigationTableEntitySet);
		}
		return investigationTableEntitySetList;
	}
	//比较时间
		private boolean compareDate(String date1, String date2) throws Exception{
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date dateTime1 = dateFormat.parse(date1);
			Date dateTime2 = dateFormat.parse(date2);
			int result = dateTime1.compareTo(dateTime2);
			if(result>=0)
				return true;
			else 
				return false;
		}

}
