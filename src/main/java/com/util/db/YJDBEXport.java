package com.util.db;

import java.io.FileOutputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



import com.util.db.DBManager;

public class YJDBEXport {
	
	public static void DBReader(String dir,String tblName, int collumSize) 
    {
            Connection con = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;

            try
            {
                String sql = "select * from "+ tblName;
                con = DBManager.connnect("yj");
                pstmt = con.prepareStatement(sql);

                rs = pstmt.executeQuery();


                String exportSql = "";
                while(rs.next())
                {
                    String tempSql = "insert into " + tblName+ " values (";

                    for(int i = 1 ; i<collumSize+1 ; i++)
                    {
                        if(collumSize==i)
                        {
                            tempSql += "'"+rs.getString(i)+"');";
                        }
                        else
                        {
                            tempSql += "'"+rs.getString(i)+"',";
                        }
                    }
                    exportSql += tempSql+"\n";
                }

                OutputStream output = new FileOutputStream(dir+tblName+".txt");
                byte[] by = exportSql.getBytes();
                output.write(by);

                output.close();
                System.out.println(exportSql);

            }catch (Exception e) {
                System.out.println(e);
            }
            finally {
                DBManager.Close(con, pstmt, rs);
            }
    }
	

}
