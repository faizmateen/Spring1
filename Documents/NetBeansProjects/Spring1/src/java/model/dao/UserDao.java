/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model.dao;

import java.util.List;
import model.pojo.EmpInfo;
import model.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author faiz
 */
public class UserDao {
    public static List<EmpInfo> lystDao(){
        List<EmpInfo> list = null;
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            String sql = "from EmpInfo";
            Query query = session.createQuery(sql);
            list = query.list();
            
            session.close();
        } catch (Exception e) {
            System.out.println(">>>>><<<<<<<<<  :" +e);
        }
        return list;
    }
}
