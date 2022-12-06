<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Estadística de Usuario</title>
<link rel="stylesheet" href="styles.css">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
	<h1><strong>Estadística de Usuario</strong></h1>
	<%
		String user = request.getParameter("username");
		if (user.equals("NothingShady")){
			out.println("<h2>Usuario: " + user + "</h2>");
			out.println("<br><center><h3>Tiempo por Sesión</h3></center>");%>
		<div id="chart-container">
			  <canvas id="myChart"></canvas>
			</div>
			<script>
			const ctx = document.getElementById('myChart');

			  new Chart(ctx, {
			    type: 'line',
			    data: {
			      labels: ['2022-11-13 10:39:12',
			    	  '2022-11-13 14:23:21',
			    	  '2022-11-14 10:05:59',
			    	  '2022-11-14 20:02:08',
			    	  '2022-11-15 13:34:10',
			    	  '2022-11-15 22:45:43',
			    	  '2022-11-16 08:15:07',
			    	  '2022-11-16 12:33:22',
			    	  '2022-11-17 10:10:49',
			    	  '2022-11-17 11:11:54',
			    	  '2022-11-18 06:12:41',
			    	  '2022-11-18 11:09:09',
			    	  '2022-11-19 13:18:31',
			    	  '2022-11-19 18:14:48',
			    	  '2022-11-20 09:31:50',
			    	  '2022-11-20 15:30:01',
			    	  '2022-11-21 07:18:33',
			    	  '2022-11-21 08:27:46',
			    	  '2022-11-22 10:57:24',
			    	  '2022-11-22 16:39:06'],
			      datasets: [{
			        label: 'Tiempo transcurrido (s)',
			        data: [93, 243, 18, 69, 195, 94, 121, 15, 92, 74, 162, 46, 198, 49, 259, 102, 186, 273, 170, 113],
			        borderWidth: 1
			      }]
			    },
			    options: {
				      scales: {
				        y: {
				          beginAtZero: true
				        }
				      }
			    }
			  });
			</script>
			<br><br><center><h3>Movimientos por Sesión</h3></center>
			<div id="chart-container">
			  <canvas id="myChart1"></canvas>
			</div>
			<script>
			const ctx1 = document.getElementById('myChart1');
			  /*GRAFICO DE MOVIMIENTOS*/
			  new Chart(ctx1, {
				    type: 'line',
				    data: {
				      labels: ['2022-11-13 10:39:12',
				    	  '2022-11-13 14:23:21',
				    	  '2022-11-14 10:05:59',
				    	  '2022-11-14 20:02:08',
				    	  '2022-11-15 13:34:10',
				    	  '2022-11-15 22:45:43',
				    	  '2022-11-16 08:15:07',
				    	  '2022-11-16 12:33:22',
				    	  '2022-11-17 10:10:49',
				    	  '2022-11-17 11:11:54',
				    	  '2022-11-18 06:12:41',
				    	  '2022-11-18 11:09:09',
				    	  '2022-11-19 13:18:31',
				    	  '2022-11-19 18:14:48',
				    	  '2022-11-20 09:31:50',
				    	  '2022-11-20 15:30:01',
				    	  '2022-11-21 07:18:33',
				    	  '2022-11-21 08:27:46',
				    	  '2022-11-22 10:57:24',
				    	  '2022-11-22 16:39:06'],
				      datasets: [{
				        label: 'Movimientos',
				        data: [75, 209, 13, 60, 171, 88, 109, 10, 83, 66, 150, 52, 179, 39, 238, 93, 167, 281, 169, 110],
				        borderWidth: 1
				      }]
				    },
				    options: {
					      scales: {
					        y: {
					          beginAtZero: true
					        }
					      }
				    }
				  });
			</script>
		<%}
		else {
			out.println("<h2>No existe el usuario: " + user + "</h2>");
		}
			%>
	<br><form action="login.jsp">
	<input type="submit" value="Volver">
	</form><br>
</body>
</html>