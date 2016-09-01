package com.GB.ChinaMobileMS.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.GB.ChinaMobileMS.entity.AssetFurniture;
import com.GB.ChinaMobileMS.entity.AssetHouse;
import com.GB.ChinaMobileMS.entity.AssetHousing;
import com.GB.ChinaMobileMS.entity.AssetLoanDevice;
import com.GB.ChinaMobileMS.entity.BranchEntity;
import com.GB.ChinaMobileMS.entity.CompanyEntity;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.AssetFurnitureService;
import com.GB.ChinaMobileMS.services.interfaces.AssetHouseService;
import com.GB.ChinaMobileMS.services.interfaces.AssetHousingService;
import com.GB.ChinaMobileMS.services.interfaces.AssetLoanDeviceService;
import com.GB.ChinaMobileMS.services.interfaces.BranchService;
import com.GB.ChinaMobileMS.services.interfaces.CompanyService;
import com.GB.ChinaMobileMS.services.interfaces.UserService;

@Controller
public class RegisterController {
	@Autowired
	private AssetHousingService ashService;
	@Autowired
	private AssetHouseService roomService;
	@Autowired
	private AssetFurnitureService asfService;
	@Autowired
	private AssetLoanDeviceService aldService;
	@Autowired
	private UserService userSerice;
	@Autowired
	private CompanyService companyService;
	@Autowired
	private BranchService branchService;
	@Autowired
	private CompanyQuery cq;

	// 上市公司资产登记
	@RequestMapping(value = "/register/{id}", method = RequestMethod.GET)
	public ModelAndView AssetUser(User user, @PathVariable("id") String id,
			HttpSession session) {

		List<CompanyEntity> listCompany = companyService.queryCompany();
		List<BranchEntity> listBranch = branchService.queryBranch();
		List<User> listUser = userSerice.listUser();
		List<AssetHouse> listRoom = roomService.queryAssetHouse();
		List<AssetHousing> listash = ashService.queryAssetHousing();

		Map map = new HashMap();

		map.put("listCompany", listCompany);
		map.put("listBranch", listBranch);
		map.put("listash", listash);
		map.put("listRoom", listRoom);
		map.put("listUser", listUser);

		// 一次性获取登记时所需数据库信息，不会ajax
		if (id.equals("houses-add"))
			return new ModelAndView("/function/company-register-houses-add",
					map);// 上市公司资产建筑登记跳转
		else if (id.equals("rooms-add"))
			return new ModelAndView("/function/company-register-rooms-add", map);// 上市公司资产房间登记跳转
		else if (id.equals("furniture-add"))
			return new ModelAndView("/function/company-register-furniture-add",
					map);// 上市公司资产家具登记跳转
		else if (id.equals("lease-add"))
			return new ModelAndView("/function/company-register-lease-add", map);// 上市公司资产租赁设备登记跳转
		else
			return new ModelAndView("forward:/");
	}
	//上市公司资产建筑登记控制
	@RequestMapping(value = "/addAH", method = RequestMethod.GET)
	public ModelAndView addAssetHousing(AssetHousing ash, HttpSession session) {
		ashService.addAssetHousing(ash);
		return cq.CompanyQueryAfterRegister("houses");
	}
	//上市公司资产房间登记控制
	@RequestMapping(value = "/addRoom", method = RequestMethod.GET)
	public ModelAndView addAssetHouse(AssetHouse room, HttpSession session) {
		roomService.addAssetHouse(room);
		return cq.CompanyQueryAfterRegister("rooms");
	}
	//上市公司资产家具登记控制
	@RequestMapping(value = "/addFurniture", method = RequestMethod.GET)
	public ModelAndView addFurniture(AssetFurniture assetfurn,
			HttpSession session) {
		asfService.addFurniture(assetfurn);
		return cq.CompanyQueryAfterRegister("furniture");
	}
	//上市公司资产租赁设备登记控制
	@RequestMapping(value = "/addLoanDevice", method = RequestMethod.GET)
	public ModelAndView addLoanDevice(AssetLoanDevice ald, HttpSession session) {
		aldService.addLoanDevice(ald);

		return cq.CompanyQueryAfterRegister("lease");
	}

}
