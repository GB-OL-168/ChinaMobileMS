package com.GB.ChinaMobileMS.Interceptor;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class RoleInterceptor extends HandlerInterceptorAdapter {
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
		System.out.println("URL = " + request.getRequestURI());
		// 账号管理
		if (request.getRequestURI().equals("/system/user") || request.getRequestURI().equals("/user-add")) {
			// 有权访问
			if ((int) request.getSession().getAttribute("sysAccountManage") == 1)
				return true;
			// 无权访问
			else
				try {
					response.sendRedirect("/error.jsp");
				} catch (IOException e) {
					e.printStackTrace();
				}
			return false;
		}
		// 权限设置
		else if (request.getRequestURI().equals("/system/role-assignment")
				|| request.getRequestURI().equals("/system/role-authorization")
				|| request.getRequestURI().equals("/system/role-authorization-add")) {
			if ((int) request.getSession().getAttribute("sysPrivilegeSetting") == 1)
				return true;
			else
				try {
					response.sendRedirect("/error.jsp");
				} catch (IOException e) {
					e.printStackTrace();
				}
			return false;
		}
		// 参数配置
		else if (request.getRequestURI().equals("/system/parameter")) {
			if ((int) request.getSession().getAttribute("sysParameterSetting") == 1)
				return true;
			else
				try {
					response.sendRedirect("/error.jsp");
				} catch (IOException e) {
					e.printStackTrace();
				}
			return false;
		}
		// 数据备份
		else if (request.getRequestURI().equals("/system/data")) {
			if ((int) request.getSession().getAttribute("sysDataRestore") == 1)
				return true;
			else
				try {
					response.sendRedirect("/error.jsp");
				} catch (IOException e) {
					e.printStackTrace();
				}
			return false;
		}
		// 配餐中心用餐申请-申请方
		else if (request.getRequestURI().equals("/property/dinnerApplicationView")) {
			if ((int) request.getSession().getAttribute("serverApplicationDinner") == 1)
				return true;
			else
				try {
					response.sendRedirect("/error.jsp");
				} catch (IOException e) {
					e.printStackTrace();
				}
			return false;
		}
		// 配餐中心用餐申请-审核方
		else if (request.getRequestURI().equals("/property/dinnerAuditing")) {
			if ((int) request.getSession().getAttribute("auditingApplicationDinner") == 1)
				return true;
			else
				try {
					response.sendRedirect("/error.jsp");
				} catch (IOException e) {
					e.printStackTrace();
				}
			return false;
		}
		// 配餐中心用餐申请-管理方
		else if (request.getRequestURI().equals("/property/dinnerManagement")) {
			if ((int) request.getSession().getAttribute("managementApplicationDinner") == 1)
				return true;
			else
				try {
					response.sendRedirect("/error.jsp");
				} catch (IOException e) {
					e.printStackTrace();
				}
			return false;
		}
		// 物业服务需求申请-申请方
		else if (request.getRequestURI().equals("/property/server")
				|| request.getRequestURI().equals("/property/applicant")) {
			if ((int) request.getSession().getAttribute("serverApplicationProperty") == 1)
				return true;
			else
				try {
					response.sendRedirect("/error.jsp");
				} catch (IOException e) {
					e.printStackTrace();
				}
			return false;
		}
		// 物业服务需求申请-审核方
		else if (request.getRequestURI().equals("/property/auditing")) {
			if ((int) request.getSession().getAttribute("auditingApplicationProperty") == 1)
				return true;
			else
				try {
					response.sendRedirect("/error.jsp");
				} catch (IOException e) {
					e.printStackTrace();
				}
			return false;
		}
		// 物业服务需求申请-管理方
		else if (request.getRequestURI().equals("/property/management")) {
			if ((int) request.getSession().getAttribute("managementApplicationProperty") == 1)
				return true;
			else
				try {
					response.sendRedirect("/error.jsp");
				} catch (IOException e) {
					e.printStackTrace();
				}
			return false;
		}
		// 车辆登记
		else if (request.getRequestURI().equals("/vehicle/info-add")
				|| request.getRequestURI().equals("/vehicle/person-add")) {
			if ((int) request.getSession().getAttribute("registerVehicle") == 1)
				return true;
			else
				try {
					response.sendRedirect("/error.jsp");
				} catch (IOException e) {
					e.printStackTrace();
				}
			return false;
		}
		// 车辆查询
		else if (request.getRequestURI().equals("/vehicle/info-find")
				|| request.getRequestURI().equals("/vehicle/person-find")) {
			if ((int) request.getSession().getAttribute("queryVehicle") == 1)
				return true;
			else
				try {
					response.sendRedirect("/error.jsp");
				} catch (IOException e) {
					e.printStackTrace();
				}
			return false;
		}
		// 上市公司资产登记
		else if (request.getRequestURI().equals("/register/houses-add")
				|| request.getRequestURI().equals("/register/rooms-add")
				|| request.getRequestURI().equals("/register/furniture-add")
				|| request.getRequestURI().equals("/register/lease-add")) {
			if ((int) request.getSession().getAttribute("registerAsset") == 1)
				return true;
			else
				try {
					response.sendRedirect("/error.jsp");
				} catch (IOException e) {
					e.printStackTrace();
				}
			return false;
		}
		// 上市公司资产查询
		else if (request.getRequestURI().equals("/companyquery/houses")
				|| request.getRequestURI().equals("/companyquery/rooms")
				|| request.getRequestURI().equals("/companyquery/furniture")
				|| request.getRequestURI().equals("/companyquery/lease")) {
			if ((int) request.getSession().getAttribute("queryAsset") == 1)
				return true;
			else
				try {
					response.sendRedirect("/error.jsp");
				} catch (IOException e) {
					e.printStackTrace();
				}
			return false;
		}
		// 上市公司资产管理
		else if (request.getRequestURI().equals("/company/info")
				|| request.getRequestURI().equals("/company/count-list")) {
			if ((int) request.getSession().getAttribute("mangaementAsset") == 1)
				return true;
			else
				try {
					response.sendRedirect("/error.jsp");
				} catch (IOException e) {
					e.printStackTrace();
				}
			return false;
		}
		// 物业服务考评填写
		else if (request.getRequestURI().equals("/service/management-write")) {
			//有权访问
			if ((int) request.getSession().getAttribute("evaluationFillProperty") == 1)
				return true;
			//无权访问
			else
				try {
					response.sendRedirect("/error.jsp");
				} catch (IOException e) {
					e.printStackTrace();
				}
			return false;
		}
		// 物业服务考评管理
		else if (request.getRequestURI().equals("/service/management-check")
				|| request.getRequestURI().equals("/service/management-table-make")) {
			//有权访问
			if ((int) request.getSession().getAttribute("evaluationMangaementProperty") == 1)
				return true;
			//无权访问
			else
				try {
					response.sendRedirect("/error.jsp");
				} catch (IOException e) {
					e.printStackTrace();
				}
			return false;
		}
		
		//非系统功能
		else
			return true;
	}
}