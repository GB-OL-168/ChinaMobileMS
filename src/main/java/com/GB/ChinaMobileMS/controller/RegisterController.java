package com.GB.ChinaMobileMS.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.GB.ChinaMobileMS.dao.AssetLoanDeviceMapper;
import com.GB.ChinaMobileMS.entity.AssetFurniture;
import com.GB.ChinaMobileMS.entity.AssetHouse;
import com.GB.ChinaMobileMS.entity.AssetHousing;
import com.GB.ChinaMobileMS.entity.AssetLoanDevice;
import com.GB.ChinaMobileMS.entity.User;
import com.GB.ChinaMobileMS.services.interfaces.AssetFurnitureService;
import com.GB.ChinaMobileMS.services.interfaces.AssetHouseService;
import com.GB.ChinaMobileMS.services.interfaces.AssetHousingService;
import com.GB.ChinaMobileMS.services.interfaces.AssetLoanDeviceService;
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

	@RequestMapping(value = "/register/{id}", method = RequestMethod.GET)
	public ModelAndView AssetUser(User user, @PathVariable("id") String id, HttpSession session) {
		if (id.equals("houses-add"))
			return new ModelAndView("/function/company-register-houses-add");
		else if (id.equals("rooms-add"))
			return new ModelAndView("/function/company-register-rooms-add");
		else if (id.equals("furniture-add"))
			return new ModelAndView("/function/company-register-furniture-add");
		else if (id.equals("lease-add"))
			return new ModelAndView("/function/company-register-lease-add");
		else
			return new ModelAndView("forward:/");
	}

	@RequestMapping(value = "/addAH", method = RequestMethod.GET)
	public ModelAndView addAssetHousing(AssetHousing ash, HttpSession session) {
		System.out.println("Enter Controller");

		System.out.println("Ash:" + ash);

		String str = ashService.addAssetHousing(ash);
		return new ModelAndView("/u/main");
	}

	@RequestMapping(value = "/addRoom", method = RequestMethod.GET)
	public ModelAndView addAssetHouse(AssetHouse room, HttpSession session) {
		System.out.println("Enter Controller");

		System.out.println("ROOM:" + room);

		String str = roomService.addAssetHouse(room);
		return new ModelAndView("/u/main");
	}

	@RequestMapping(value = "/addFurniture", method = RequestMethod.GET)
	public ModelAndView addFurniture(AssetFurniture assetfurn, HttpSession session) {
		System.out.println("Enter Controller");

		System.out.println("assetfurn:" + assetfurn);

		String str = asfService.addFurniture(assetfurn);
		return new ModelAndView("/u/main");
	}

	@RequestMapping(value = "/addLoanDevice", method = RequestMethod.GET)
	public ModelAndView addLoanDevice(AssetLoanDevice ald, HttpSession session) {
		System.out.println("Enter Controller");

		System.out.println("AssetLoanDevice:" + ald);

		List<User> listUser = userSerice.listUser();
		Iterator<User> it = listUser.iterator();
		int flag = 0;
		while (it.hasNext()) {
			User tmp = it.next();
			System.out.println(tmp.getUserName());
			if (ald.getLoanUserName().equals(tmp.getUserName())) {
				System.out.println(tmp.getUserName());
				flag = 1;
				break;
			}
		}
		if (flag == 0) {
			System.out.println("Match UserName");
			String str = aldService.addLoanDevice(ald);
		} else {
			System.out.println("Don't Match UserName");
		}
		return new ModelAndView("/u/main");
	}

}
