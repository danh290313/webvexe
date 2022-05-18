package poly.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.Entity.Nhan_Vien;
import ptithcm.Entity.User;


@Controller
@RequestMapping("site/")
@Transactional
public class UserController {
	@Autowired
	SessionFactory factory;
	static User usertemp;
    @RequestMapping(value = "in_for/{userId}.htm",params = "btnid")
    public String infor(ModelMap model,@PathVariable("userId") Integer userId,@ModelAttribute("khach_hang") User khach_hang){
    	User list=this.getuser(userId);
    	usertemp=this.getuser(userId);
    	model.addAttribute("khach_hangs",list);
    	model.addAttribute("khach_hang",list);
    	System.out.println(list);
    	return "site/user/userInfo";
    
    }
    @RequestMapping(value = "update",params = "btnEdit")
    public String update(ModelMap model,@ModelAttribute("khach_hang") User khach_hang) {
    	try {
    		khach_hang.setPhoneNumber(usertemp.getPhoneNumber());
    		khach_hang.setDiaChi(usertemp.getDiaChi());
    		khach_hang.setIdTaiKhoan(usertemp.getIdTaiKhoan());
			Integer check=this.updatekh(khach_hang);
			if(check==1) {
				model.addAttribute("message","update thanh cong");
			}else {
				model.addAttribute("message","update that bai");
			}
			model.addAttribute("khach_hangs",this.getuser(khach_hang.getUserId()));
		} catch (Exception e) {
			// TODO: handle exception
			return "site/user/userInfo";
		}
    	return "site/user/userInfo";
    }
    @RequestMapping("userbookedticket")
    public String userbook(ModelMap model) {
    	return "site/user/userBookedTickets";
    }
    
    public Integer updatekh(User user) {
    	Session session=factory.openSession();
    	Transaction t=session.beginTransaction();
    	try {
			session.update(user);
			t.commit();
		} catch (Exception e) {
			// TODO: handle exception
			t.rollback();
			return 0;
		}finally {
			session.close();
		}
    	return 1;
    }
    public User getuser(Integer userid) {
    	Session session=factory.getCurrentSession();
    	String hql="from User where userId =:userid";
    	Query query=session.createQuery(hql);
    	query.setParameter("userid", userid);
    	User list=(User) query.list().get(0);
    	return list;
    }
 

}
