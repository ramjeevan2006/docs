<%@page import="com.demo.project.EmployeeVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<script type="text/javascript" src="JS/jquery-1.4.2.min.js"></script>
<% 
	try{      
		 String s[]=null;

 			 Map<String, EmployeeVO> dataSourceMap ;
 		     ServletContext sc = request.getSession().getServletContext();
 			 dataSourceMap = (Map<String, EmployeeVO>)sc.getAttribute("empDataSource");
 			// identifier = request.getParameter("identifier");

 			Set<String> employeeList = dataSourceMap.keySet();
			String[] str = new String[employeeList.size()];			
			Iterator it = employeeList.iterator();
			
			int i = 0;
			while(it.hasNext())
			{
				String p = (String)it.next();	
				str[i] = p;
				i++;
			}
		
			//jQuery related start		
				String query = (String)request.getParameter("q");
				
				int cnt=1;
				for(int j=0;j<str.length;j++)
				{
					if(str[j].toUpperCase().startsWith(query.toUpperCase()))
					{
						out.print(str[j]+"\n");
						if(cnt>=5)
							break;
						cnt++;
					}
				}
			//jQuery related end	
		
			


		    } 
		catch(Exception e){ 
 			e.printStackTrace(); 
 		}

 %>