<%@page import="java.sql.ResultSet"%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="org.apache.commons.fileupload.*" %>
<%@page import="org.apache.commons.fileupload.servlet.*" %>
<%@page import="org.apache.commons.fileupload.disk.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop</title>
    </head>
    <body>
        <%
           
        File savedFile=null;
        FileItem f_item=null;
       
       

String field_name="";
String file_name="";
String fn="";
String fn1="";

String field[] = new String[20];
String value[]=new String[20];
//enctype="multipart/form-data"
//checking if request cotains multipart data
boolean isMultipart=ServletFileUpload.isMultipartContent(request);

if(isMultipart)
{
    System.out.println("ifff");

    FileItemFactory factory=new DiskFileItemFactory();
    ServletFileUpload upload=new ServletFileUpload(factory);

    //declaring a list of form fields
    List items_list=null;

    //assigning fields to list 'items_list'
    try
    {
    items_list=upload.parseRequest(request);
    }
    catch(FileUploadException ex)
    {
        out.println(ex);
    }

          //declaring iterator
   Iterator itr=items_list.iterator();
    int k=0;
    //iterating through the list 'items_list'
    while(itr.hasNext())
    {
       
        //typecasting next element in items_list as fileitem
        f_item=(FileItem)itr.next();

        //checking if 'f_item' contains a formfield(common controls like textbox,dropdown,radio buttonetc)
       if(f_item.isFormField())
        {
         
            //getting fieldname and value
            field[k]=f_item.getFieldName();
            value[k]=f_item.getString();
               
                k++;
        }
       else
       {
 
 
           //f_item=(FileItem)itr.next();
           
          file_name=f_item.getName();
           field_name=f_item.getFieldName();
           if(field_name.equals("file_proof"))
           {
         String ext=file_name.substring(file_name.lastIndexOf("."));
            //setting path to store image
            File proj_path=new File(config.getServletContext().getRealPath("/"));
            String file_path=proj_path.getParentFile().getParentFile().getPath()+"\\web\\Assets\\Files\\ShopProof\\";
            Random r=new Random();
             int r_num=r.nextInt(1111)+999;
             
            fn="proof_"+r_num+ext;
            //creating a file object
            savedFile=new File(file_path+fn);
            try
            {
                //writing the file object
                f_item.write(savedFile);              
               
            }
            catch(Exception ex)
            {
                out.println(ex);
            }
            }
           if(field_name.equals("file_ownerphoto"))
           {
         String ext=file_name.substring(file_name.lastIndexOf("."));
            //setting path to store image
            File proj_path=new File(config.getServletContext().getRealPath("/"));
            String file_path=proj_path.getParentFile().getParentFile().getPath()+"\\web\\Assets\\Files\\ShopOwnerPhoto\\";
            Random r=new Random();
             int r_num=r.nextInt(1111)+999;
             
            fn1="proof_"+r_num+ext;
            //creating a file object
            savedFile=new File(file_path+fn1);
            try
            {
                //writing the file object
                f_item.write(savedFile);              
               
            }
            catch(Exception ex)
            {
                out.println(ex);
            }
            }
           
           
           
           
         
           
       }
           
           }
        if(value[9].equals(value[10]))
        {
            String str1="insert into tbl_shop(sh_nme,plc_id,sh_email,sh_siteaddr,sh_prf,sh_adhrno,sh_ownrnme,sh_licsnno,sh_photo,sh_ownrpass,dist_id,sh_pin,sh_typ,sh_contct)values('"+value[0]+"','"+value[5]+"','"+value[1]+"','"+value[2]+"','"+fn+"','"+value[6]+"','"+value[7]+"','"+value[8]+"','"+fn1+"','"+value[9]+"','"+value[4]+"','"+value[11]+"','"+value[12]+"','"+value[3]+"')";
   
        System.out.println(str1);
   
    boolean status=con.executeCommand(str1);
   
    if(status==true)
    {
      
         String pay = "Select max(sh_id) as id from tbl_shop" ;
         ResultSet rs = con.selectCommand(pay);
         rs.next();         
         session.setAttribute("id",rs.getString("id"));
          %>
      <script type="text/javascript">
            alert("Upload Successfully Paynow");
            setTimeout(function(){window.location.href='../../Guest/Payment.jsp'},100);
        </script>
     <%
     
    }
        }
        else
        {
            %>
      <script type="text/javascript">
            alert("Password Missmatch");
            setTimeout(function(){window.location.href='../../Guest/Shop.jsp'},100);
        </script>
     <%
        }
}  


     

        %>
    </body>
</html>
