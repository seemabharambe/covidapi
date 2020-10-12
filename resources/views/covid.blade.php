
<html>
    <head>
	      <title>Covid-19 Maharashtra</title>
	</head>
	
	<body>
	       <h1>COVID-19 MAHARASHTRA STATISTIC</h1>
		   
		   <table border=1 align="center">
		        <tr>
				      <th>Parameters</th>
					  <th>Count</th>
				</tr>
		        
				<tr>
				      <td>Active:</td>
					  <td><?php echo $data[0]; ?></td>
				</tr>
				
				<tr>
				      <td>Confirmed:</td>
					  <td><?php echo $data[1]; ?></td>
				</tr>
				
				<tr>
				      <td>Deaths:</td>
					  <td><?php echo $data[2]; ?></td>
				</tr>
				
				<tr>
				      <td>Recovered:</td>
					  <td><?php echo $data[3]; ?></td>
				</tr>
				
				<tr>
				      <td>Last Updated on:</td>
					  <td><?php echo $data[4]; ?></td>
				</tr>
				
		
		   
		   </table>
		   
		   <h3>Courtesy: Covid-19 India API Postman</h3>
	
	</body>


</html>