package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Bean.BeanClass;
import com.Util.ConnectionClass;

public class QueryClass {
	public static void insert(BeanClass bc) {
		System.out.println("Insert called");
		Connection cn = null;
		try {
			cn = ConnectionClass.createconnection();
			String sql = "insert into detail(Firstname,Lastname,Moblie,password,email,Birthday,Gender) values(?,?,?,?,?,?,?)";
			PreparedStatement pst = cn.prepareStatement(sql);
			pst.setString(1, bc.getFname());
			pst.setString(2, bc.getLname());
			pst.setString(3, bc.getMb());
			pst.setString(4, bc.getPass());
			pst.setString(5, bc.getEmail());
			pst.setString(6, bc.getBd());
			pst.setString(7, bc.getGen());
			pst.executeUpdate();
			System.out.println("Data Inserted");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	public static BeanClass CheckMoblie(BeanClass bc) {
		System.out.println("CheckMoblie");
		BeanClass bc1 = null;
		Connection cn = null;
		try {
			cn = ConnectionClass.createconnection();
			String sql = "select * from detail Where Moblie =?";
			PreparedStatement pst = cn.prepareStatement(sql);
			pst.setString(1, bc.getMb());
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				bc1 = new BeanClass();
				bc1.setMb(rs.getString("Moblie"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return bc1;

	}

	public static BeanClass CheckLogin(BeanClass bc) {
		System.out.println("CheckLogin Called");
		BeanClass bc1 = null;
		Connection cn = null;
		try {
			cn = ConnectionClass.createconnection();
			String sql = "select *  from detail where Moblie=? and password=?";
			PreparedStatement pst = cn.prepareStatement(sql);
			pst.setString(1, bc.getMb());
			pst.setString(2, bc.getPass());
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				bc1 = new BeanClass();
				bc1.setMb(rs.getString("Moblie"));
				bc1.setPass(rs.getString("password"));
				bc1.setFname(rs.getString("Firstname"));
				bc1.setLname(rs.getString("Lastname"));
				bc1.setBal(rs.getString("Balance"));
				bc1.setId(rs.getInt("id"));
			}
			cn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return bc1;
	}

	public static BeanClass SendMoney(BeanClass bc) {
		System.out.println("");
		BeanClass bc1 = null;
		Connection cn = null;
		try {
			cn = ConnectionClass.createconnection();
			String sql = "select * from detail where Moblie = ?";
			PreparedStatement pst = cn.prepareStatement(sql);
			pst.setString(1, bc.getMb());
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				bc1 = new BeanClass();
				bc1.setMb(rs.getString("Moblie"));
				bc1.setBal(rs.getString("Balance"));
				bc1.setId(rs.getInt("id"));
			}
			
			cn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return bc1;
		
	}

	public static void AddData(int id,String bal) {
		System.out.println("AddData Called");
		Connection cn = null;
		try {
			cn = ConnectionClass.createconnection();
			String sql = "update detail SET Balance=?  where id=?";
			PreparedStatement pst = cn.prepareStatement(sql);
			pst.setString(1, bal);
			pst.setInt(2, id);
			pst.executeUpdate();
			System.out.println("AddData Done");
           cn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	public static void SubData(int id,String sub) {
		System.out.println("SubData called");
		Connection cn = null;
		try {
			cn = ConnectionClass.createconnection();
			String sql = "update detail SET Balance=?  where id=?";
			PreparedStatement pst = cn.prepareStatement(sql);
			pst.setString(1, sub);
			pst.setInt(2, id);
			pst.executeUpdate();
			System.out.println("SubData Done");
           cn.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public static BeanClass getbal(int id) {
	   Connection cn = null;
	   BeanClass bal = null;
		try {
			 cn = ConnectionClass.createconnection();
             String sql = "select Balance from detail where id=?";
             PreparedStatement pst = cn.prepareStatement(sql);
             pst.setInt(1, id);
             ResultSet rs = pst.executeQuery();
             if(rs.next()) {
            	 bal  = new BeanClass();
            	 bal.setBal(rs.getString("Balance"));
             }
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return bal;
	}
}
