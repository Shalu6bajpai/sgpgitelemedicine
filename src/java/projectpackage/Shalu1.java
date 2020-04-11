import javax.swing.*;
import java.sql.*;
import java.awt.*;
import java.awt.event.*;
public class Shalu1 
{
 
  Connection con;
  Statement st;
  ResultSet rs;
  public static void main(String args[])
  {
     Shalu1 s=new Shalu1();
     s.frame();
     
  }
 public void connect(String username, String password)
{
    try{
          Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sgpgidb", "root", "");
           st=(Statement)con.createStatement();
       String str="insert into shalu(name,password) values('"+username+"','"+password+"')";
       st.executeUpdate(str);

    }
catch(Exception e)
{
  System.out.println("Exception occured"+e);
}
 }
public void frame()
{
  JFrame f=new JFrame("Login");
  JTextField f1=new JTextField(30);
  JTextField f2=new JTextField(30);
  JLabel l1=new JLabel("Username");
  JLabel l2=new JLabel("Password");
  JButton b1=new JButton("Submit");
f.setLayout(new GridLayout(3,2));
f.add(l1);
f.add(f1);
f.add(l2);
f.add(f2);
f.add(b1);
f.setVisible(true);
f.pack();
b1.addActionListener(new ActionListener()
{
  public void actionPerformed(ActionEvent e)
      {
  String username=f1.getText();
  String password=f2.getText();
  connect(username,password);
}
});
}
}

