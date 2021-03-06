<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
	/* .dropdown:hover>.dropdown-menu {
	  	display: block;
	} */
	
	/* .dropdown>.dropdown-toggle:active { */
	  	/*Without this, clicking will make it sticky*/
	    /* pointer-events: none;
	} */
	
	/* .btn-shadow:hover {
  		box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
	} */
	
	.btn-circle.btn-sm {
  		width: 30px;
  		height: 30px;
  		padding: 6px 11px;
  		font-size: 12px;
  		line-height: 1.33;
  		border-radius: 50%;
	}
	
	.btn-circle.btn-lg {
  		width: 50px;
  		height: 50px;
  		padding: 10px 16px;
  		font-size: 18px;
  		line-height: 1.33;
  		border-radius: 50%;
	}
	
	.btn-circle.btn-xl {
  		width: 70px;
  		height: 70px;
  		padding: 10px 16px;
  		font-size: 24px;
  		line-height: 1.33;
  		border-radius: 50%;
	}
	
	.box_radius {
		border-radius: 15px 15px;
		margin-left: -7%;
		margin-right: -7%;
	}
	
	.footer_radius {
		border-radius: 0 0 15px 15px;
		font-size: 85%;
		height: 67px;
	}
	
	.uu_tien {
		width: 50%;
		font-size: 12px;
		margin-bottom: 0;
		margin-top: 6px;
		font-weight: bold;
	}
	
	.font-size-thong-ke {
		font-size: 80%;
	}
	
	.badge {
		width: 20px;
	}
</style>

<!-- ======= Header ======= -->
<!-- <nav class="main-header navbar navbar-expand navbar-white navbar-light bg-dark"> -->
<nav class="main-header navbar navbar-expand navbar-white navbar-light bg-dark pb-0" 
	style="border-bottom: 0px solid #343a40; background-image: url('assets/user/img/5.jpg'); background-position: center;">
	<!-- Left navbar links -->
	<ul class="navbar-nav" style="margin-top: -6%;">
		<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
			href="#" role="button"> <i class="fas fa-bars" style="color: white; font-size: 25px;"></i>
		</a>
	</ul>
	
	<!-- Right navbar links -->
	<ul class="navbar-nav" style="margin-top: -6%;">
		<li class="nav-item"><a class="nav-link" data-widget="fullscreen"
			href="#" role="button"> <i class="fas fa-expand-arrows-alt" style="color: white; font-size: 25px;"></i>
		</a></li>
	</ul>
	
	<!-- === Th???ng k?? === -->
	<div class="row" style="margin-left: 37%; width: 100%;">
		<div class="col-lg-12 col-6">
			<table class="table">
				<tr>
					<td class="font-size-thong-ke pt-1 pb-1">B??O C??O V?????NG M???C TU???N 4-TH??NG 4</td>
					<td class="pt-0 pb-1">
						<span class="badge badge-info right" id="u1_t1_s1"></span>
						<span class="badge badge-warning right " id="u1_t2_s1"></span>
						<span class="badge badge-danger right" id="u1_t3_s1"></span>
					</td>
					<td class="pt-0 pb-1">
						<span class="badge badge-info right" id="u2_t1_s1"></span>
						<span class="badge badge-warning right" id="u2_t2_s1"></span>
						<span class="badge badge-danger right" id="u2_t3_s1"></span>
					</td>
					<td class="pt-0 pb-1">
						<span class="badge badge-info right" id="u3_t1_s1"></span>
						<span class="badge badge-warning right" id="u3_t2_s1"></span>
						<span class="badge badge-danger right" id="u3_t3_s1"></span>
					</td>
					<script>
					let u1_t1_s1 = document.getElementById('u1_t1_s1');
					let u1_t2_s1 = document.getElementById('u1_t2_s1');
					let u1_t3_s1 = document.getElementById('u1_t3_s1');
					var a1=0,b1=0,c1=0;
					
					let u2_t1_s1 = document.getElementById('u2_t1_s1');
					let u2_t2_s1 = document.getElementById('u2_t2_s1');
					let u2_t3_s1 = document.getElementById('u2_t3_s1');
					var d1=0,e1=0,f1=0;
					
					let u3_t1_s1 = document.getElementById('u3_t1_s1');
					let u3_t2_s1 = document.getElementById('u3_t2_s1');
					let u3_t3_s1 = document.getElementById('u3_t3_s1');
					var g1=0,h1=0,i1=0;
					var url1 = '<c:url value="/assets/user/upload/Cainayhayne.xlsx" />';
		    		var oReqh_1 = new XMLHttpRequest();

		    		oReqh_1.open("GET", url1, true);
		    		oReqh_1.responseType = "arraybuffer";
		    		oReqh_1.onload = function(e) {
		    			var arraybuffer = oReqh_1.response;

		       		  	/* convert data to binary string */
		       		  	var data = new Uint8Array(arraybuffer);
		       		  	var arr = new Array();
		       		  	for(var i = 0; i != data.length; ++i) arr[i] = String.fromCharCode(data[i]);
		       		  	var bstr = arr.join("");

		       		  	/* Call XLSX */
		       		  	var workbook = XLSX.read(bstr, {type:"binary"});
		       		  	/* DO SOMETHING WITH workbook HERE */

		       		  	workbook.SheetNames.forEach(function(sheetName) {
			       		  	var XL_row_object = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
			       		 	XL_row_object.forEach(item => {
			       		 		
				       	        if (item["Priority"] == "High") {
				       	            if (item["M???c ????? t??nh tr???ng"] == "??ang ho??n th??nh" || item["M???c ????? t??nh tr???ng"] == "x") {
				       	                a1++;
				       	            } else if (item["M???c ????? t??nh tr???ng"] == "Ch???m ti???n ?????") {
				       	                b1++;
				       	            } else if (item["M???c ????? t??nh tr???ng"] == "H???y") {
				       	                c1++;
				       	            }
				       	        } else if (item["Priority"] == "" || item["Priority"] == "x" || typeof item["Priority"] === 'undefined') {
				       	            if (item["M???c ????? t??nh tr???ng"] == "??ang ho??n th??nh" || item["M???c ????? t??nh tr???ng"] == "x" || typeof item["M???c ????? t??nh tr???ng"] === 'undefined') {
				       	                d1++;
				       	            } else if (item["M???c ????? t??nh tr???ng"] == "Ch???m ti???n ?????") {
				       	                e1++;
				       	            } else if (item["M???c ????? t??nh tr???ng"] == "H???y") {
				       	                f1++;
				       	            }
				       	        } else if (item["Priority"] == "2" || item["Priority"] == "medium") {
				       	            if (item["M???c ????? t??nh tr???ng"] == "??ang ho??n th??nh") {
				       	                g1++;
				       	            } else if (item["M???c ????? t??nh tr???ng"] == "Ch???m ti???n ?????") {
				       	                h1++;
				       	            } else if (item["M???c ????? t??nh tr???ng"] == "H???y") {
				       	                i1++;
				       	            }
				       	        }
		
		
				       	    });
			       		
		       		  	});
		       		 	u1_t1_s1.innerHTML = a1;
			       	    u1_t2_s1.innerHTML = b1;
			       	    u1_t3_s1.innerHTML = c1;

			       	    u2_t1_s1.innerHTML = d1;
			       	    u2_t2_s1.innerHTML = e1;
			       	    u2_t3_s1.innerHTML = f1;

			       	    u3_t1_s1.innerHTML = g1;
			       	    u3_t2_s1.innerHTML = h1;
			       	    u3_t3_s1.innerHTML = i1;
		    		}
		    		oReqh_1.send();
					</script>
					
				</tr>
				<tr>
					<td class="font-size-thong-ke pt-1 pb-1">D??? ??N KINH DOANH TU???N 21.17 (AM-BDC)</td>
					<td class="pt-0 pb-1">
						<span class="badge badge-info right" id="u1_t1_s2"></span>
						<span class="badge badge-warning right" id="u1_t2_s2"></span>
						<span class="badge badge-danger right" id="u1_t3_s2"></span>
					</td>
					<td class="pt-0 pb-1">
						<span class="badge badge-info right" id="u2_t1_s2"></span>
						<span class="badge badge-warning right" id="u2_t2_s2"></span>
						<span class="badge badge-danger right" id="u2_t3_s2"></span>
					</td>
					<td class="pt-0 pb-1">
						<span class="badge badge-info right" id="u3_t1_s2"></span>
						<span class="badge badge-warning right" id="u3_t2_s2"></span>
						<span class="badge badge-danger right" id="u3_t3_s2"></span>
					</td>
					<script>
						let u1_t1_s2 = document.getElementById("u1_t1_s2");
						let u1_t2_s2 = document.getElementById("u1_t2_s2");
						let u1_t3_s2 = document.getElementById("u1_t3_s2");
						let a2=0,b2=0,c2=0;
						
						let u2_t1_s2 = document.getElementById("u2_t1_s2");
						let u2_t2_s2 = document.getElementById("u2_t2_s2");
						let u2_t3_s2 = document.getElementById("u2_t3_s2");
						let d2=0,e2=0,f2=0;
						
						let u3_t1_s2 = document.getElementById("u3_t1_s2");
						let u3_t2_s2 = document.getElementById("u3_t2_s2");
						let u3_t3_s2 = document.getElementById("u3_t3_s2");
						let g2=0,h2=0,i2=0;
						var url2 = '<c:url value="/assets/user/upload/Sheet2.xlsx" />';
			    		var oReqh_2 = new XMLHttpRequest();

			    		oReqh_2.open("GET", url2, true);
			    		oReqh_2.responseType = "arraybuffer";
			    		oReqh_2.onload = function(e) {
			    			var arraybuffer = oReqh_2.response;

			       		  	/* convert data to binary string */
			       		  	var data = new Uint8Array(arraybuffer);
			       		  	var arr = new Array();
			       		  	for(var i = 0; i != data.length; ++i) arr[i] = String.fromCharCode(data[i]);
			       		  	var bstr = arr.join("");

			       		  	/* Call XLSX */
			       		  	var workbook = XLSX.read(bstr, {type:"binary"});
			       		  	/* DO SOMETHING WITH workbook HERE */

			       		  	workbook.SheetNames.forEach(function(sheetName) {
				       		  	var XL_row_object = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
				       		  	
				       		 	XL_row_object.forEach(item => {
				       		 		
				       		 	if(item["M???c ????? ??u ti??n"]=="1"){
									if(item["T??nh tr???ng d??? ??n"]=="??ang ho??n th??nh" || item["T??nh tr???ng d??? ??n"]=="" || typeof  item["T??nh tr???ng d??? ??n"] === 'undefined'){
										a2++;
									}else if(item["T??nh tr???ng d??? ??n"]=="Ch???m ti???n ?????"){
										b2++;
									}else if(item["T??nh tr???ng d??? ??n"]=="H???y"){
										c2++;
									}
								}else if(item["M???c ????? ??u ti??n"]=="2"){
									if(item["T??nh tr???ng d??? ??n"]=="??ang ho??n th??nh" || item["T??nh tr???ng d??? ??n"]=="" || typeof  item["T??nh tr???ng d??? ??n"] === 'undefined'){
										d2++;
									}else if(item["T??nh tr???ng d??? ??n"]=="Ch???m ti???n ?????"){
										e2++;
									}else if(item["T??nh tr???ng d??? ??n"]=="H???y"){
										f2++;
									}
								}else if(item["M???c ????? ??u ti??n"]=="3" || typeof  item["M???c ????? ??u ti??n"] === 'undefined'){
									if(item["T??nh tr???ng d??? ??n"]=="??ang ho??n th??nh" || item["T??nh tr???ng d??? ??n"]=="" || typeof  item["T??nh tr???ng d??? ??n"] === 'undefined' ){
										g2++;
									}else if(item["T??nh tr???ng d??? ??n"]=="Ch???m ti???n ?????"){
										h2++;
									}else if(item["T??nh tr???ng d??? ??n"]=="H???y"){
										i2++;
									}
								}
			
			
					       	    });
				       		
			       		  	});
			       		u1_t1_s2.innerHTML = a2;
			       	    u1_t2_s2.innerHTML = b2;
			       	    u1_t3_s2.innerHTML = c2;

			       	    u2_t1_s2.innerHTML = d2;
			       	    u2_t2_s2.innerHTML = e2;
			       	    u2_t3_s2.innerHTML = f2;

			       	    u3_t1_s2.innerHTML = g2;
			       	    u3_t2_s2.innerHTML = h2;
			       	    u3_t3_s2.innerHTML = i2;
			    		}
			    		oReqh_2.send();
						
					</script>
				</tr>
				<tr>
					<td class="font-size-thong-ke pt-1 pb-1">D??? ??N KINH DOANH TU???N 21.17 (A.Khanh + A.T?? + A. ??o??n Tu???n)</td>
					<td class="pt-0 pb-1">
						<span class="badge badge-info right" id="u1_t1_s3"></span>
						<span class="badge badge-warning right" id="u1_t2_s3"></span>
						<span class="badge badge-danger right" id="u1_t3_s3"></span>
					</td>
					<td class="pt-0 pb-1">
						<span class="badge badge-info right" id="u2_t1_s3"></span>
						<span class="badge badge-warning right" id="u2_t2_s3"></span>
						<span class="badge badge-danger right" id="u2_t3_s3"></span>
					</td>
					<td class="pt-0 pb-1">
						<span class="badge badge-info right" id="u3_t1_s3"></span>
						<span class="badge badge-warning right" id="u3_t2_s3"></span>
						<span class="badge badge-danger right" id="u3_t3_s3"></span>
					</td>
					<script>
						let u1_t1_s3 = document.getElementById("u1_t1_s3");
						let u1_t2_s3 = document.getElementById("u1_t2_s3");
						let u1_t3_s3 = document.getElementById("u1_t3_s3");
						let a3=0,b3=0,c3=0;
						
						let u2_t1_s3 = document.getElementById("u2_t1_s3");
						let u2_t2_s3 = document.getElementById("u2_t2_s3");
						let u2_t3_s3 = document.getElementById("u2_t3_s3");
						let d3=0,e3=0,f3=0;
						
						let u3_t1_s3 = document.getElementById("u3_t1_s3");
						let u3_t2_s3 = document.getElementById("u3_t2_s3");
						let u3_t3_s3 = document.getElementById("u3_t3_s3");
						let g3=0,h3=0,i3=0;
						
						var url3 = '<c:url value="/assets/user/upload/Sheet3.xlsx" />';
			    		var oReqh_3 = new XMLHttpRequest();

			    		oReqh_3.open("GET", url3, true);
			    		oReqh_3.responseType = "arraybuffer";
			    		oReqh_3.onload = function(e) {
			    			var arraybuffer = oReqh_3.response;

			       		  	/* convert data to binary string */
			       		  	var data = new Uint8Array(arraybuffer);
			       		  	var arr = new Array();
			       		  	for(var i = 0; i != data.length; ++i) arr[i] = String.fromCharCode(data[i]);
			       		  	var bstr = arr.join("");

			       		  	/* Call XLSX */
			       		  	var workbook = XLSX.read(bstr, {type:"binary"});
			       		  	/* DO SOMETHING WITH workbook HERE */

			       		  	workbook.SheetNames.forEach(function(sheetName) {
			       		  		var XL_row_object = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
			       		  	XL_row_object.forEach(item => {
			       		     if (item["M???c ????? ??u ti??n"] == "1") {
			       		         if (item["T??nh tr???ng d??? ??n"] == "" || item["T??nh tr???ng d??? ??n"] == "??ang ho??n th??nh" || typeof item["T??nh tr???ng d??? ??n"] === "undefined") {
			       		             a3++;
			       		         } else if (item["T??nh tr???ng d??? ??n"] == "Ch???m ti???n ?????") {
			       		             b3++;
			       		         } else if (item["T??nh trang d??? ??n"] == "H???y") {
			       		             c3++;
			       		         }
			       		     } else if (item["M???c ????? ??u ti??n"] == "2" || typeof item["M???c ????? ??u ti??n"] === "undefined") {
			       		         if (item["T??nh tr???ng d??? ??n"] == "" || item["T??nh tr???ng d??? ??n"] == "??ang ho??n th??nh" || typeof item["T??nh tr???ng d??? ??n"] === "undefined") {
			       		             d3++;
			       		         } else if (item["T??nh tr???ng d??? ??n"] == "Ch???m ti???n ?????") {
			       		             e3++;
			       		         } else if (item["T??nh tr???ng d??? ??n"] == "H???y") {
			       		             f3++;
			       		         }
			       		     } else if (item["M???c ????? ??u ti??n"] == "3") {
			       		         if (item["T??nh tr???ng d??? ??n"] == "" || item["T??nh tr???ng d??? ??n"] == "??ang ho??n th??nh" || typeof item["T??nh tr???ng d??? ??n"] === "undefined") {
			       		             g3++;
			       		         }
			       		         if (item["M???c ????? ??u ti??n"] == "Ch???m ti???n ?????") {
			       		             h3++;
			       		         }
			       		         if (item["M???c ????? ??u ti??n"] == "H???y") {
			       		             i3++;
			       		         }
			       		     }


			       		 });
			       		  	
			       		  	});
			       		 u1_t1_s3.innerHTML = a3;
			       		u1_t2_s3.innerHTML = b3;
			       		u1_t3_s3.innerHTML = c3;

			       		u2_t1_s3.innerHTML = d3;
			       		u2_t2_s3.innerHTML = e3;
			       		u2_t3_s3.innerHTML = f3;

			       		u3_t1_s3.innerHTML = g3;
			       		u3_t2_s3.innerHTML = h3;
			       		u3_t3_s3.innerHTML = i3;
			       		  	
			       		
			    		}
			    		oReqh_3.send();
						
						
					</script>
				</tr>
				<tr class="font-size-thong-ke">
					<td></td>
					<td class="pt-0 pb-1"><b>??u ti??n 1</b></td>
					<td class="pt-0 pb-1"><b>??u ti??n 2</b></td>
					<td class="pt-0 pb-1"><b>??u ti??n 3</b></td>
				</tr>
			</table>
		</div>
	</div>

	<!-- === Th???ng k?? 3 sheet === -->
	<!-- <div class="row" style="width: 50%; float: right; margin-left: 43%; margin-bottom: -1%;">
		<div class="col-lg-4 col-6">
			<div class="small-box bg-light box_radius">
				<div class="inner">
					<div class="d-flex">
						<div class="uu_tien">
							<font color="#dc3545">??u ti??n 1:</font>
						</div>
						<div style="width: 50%;">
							<div style="float: right;">
								<span class="badge badge-info right">1</span>
								<span class="badge badge-warning right">1</span>
								<span class="badge badge-danger right">1</span>
							</div>
						</div>	
					</div><hr style="margin-top: 3%; margin-bottom: 3%;">
					
					<div class="d-flex">
						<div class="uu_tien">
							<font color="#ffc107">??u ti??n 2:</font>
						</div>
						<div style="width: 50%;">
							<div style="float: right;">
								<span class="badge badge-info right">1</span>
								<span class="badge badge-warning right">1</span>
								<span class="badge badge-danger right">1</span>
							</div>
						</div>	
					</div><hr style="margin-top: 3%; margin-bottom: 3%;">
					
					<div class="d-flex">
						<div class="uu_tien">
							<font color="#17a2b8">??u ti??n 3:</font>
						</div>
						<div style="width: 50%;">
							<div style="float: right;">
								<span class="badge badge-info right">1</span>
								<span class="badge badge-warning right">1</span>
								<span class="badge badge-danger right">1</span>
							</div>
						</div>	
					</div>
				</div>
				<div class="small-box-footer bg-gradient-dark footer_radius"><b>B??O C??O V?????NG M???C<br>TU???N 4-TH??NG 4</b></div>
			</div>
		</div>
		
		<div class="col-lg-4 col-6">
			<div class="small-box bg-light box_radius">
				<div class="inner">
					<div class="d-flex">
						<div class="uu_tien">
							<font color="#dc3545">??u ti??n 1:</font>
						</div>
						<div style="width: 50%;">
							<div style="float: right;">
								<span class="badge badge-info right">1</span>
								<span class="badge badge-warning right">1</span>
								<span class="badge badge-danger right">1</span>
							</div>
						</div>	
					</div><hr style="margin-top: 3%; margin-bottom: 3%;">
					
					<div class="d-flex">
						<div class="uu_tien">
							<font color="#ffc107">??u ti??n 2:</font>
						</div>
						<div style="width: 50%;">
							<div style="float: right;">
								<span class="badge badge-info right">1</span>
								<span class="badge badge-warning right">1</span>
								<span class="badge badge-danger right">1</span>
							</div>
						</div>	
					</div><hr style="margin-top: 3%; margin-bottom: 3%;">
					
					<div class="d-flex">
						<div class="uu_tien">
							<font color="#17a2b8">??u ti??n 3:</font>
						</div>
						<div style="width: 50%;">
							<div style="float: right;">
								<span class="badge badge-info right">1</span>
								<span class="badge badge-warning right">1</span>
								<span class="badge badge-danger right">1</span>
							</div>
						</div>	
					</div>
				</div>
				<div class="small-box-footer bg-gradient-dark footer_radius">
					<b>D??? ??N KINH DOANH TU???N 21.17 (AM-BDC)</b>
				</div>
			</div>
		</div>
		
		<div class="col-lg-4 col-6">
			<div class="small-box bg-light box_radius">
				<div class="inner">
					<div class="d-flex">
						<div class="uu_tien">
							<font color="#dc3545">??u ti??n 1:</font>
						</div>
						<div style="width: 50%;">
							<div style="float: right;">
								<span class="badge badge-info right">1</span>
								<span class="badge badge-warning right">1</span>
								<span class="badge badge-danger right">1</span>
							</div>
						</div>	
					</div><hr style="margin-top: 3%; margin-bottom: 3%;">
					
					<div class="d-flex">
						<div class="uu_tien">
							<font color="#ffc107">??u ti??n 2:</font>
						</div>
						<div style="width: 50%;">
							<div style="float: right;">
								<span class="badge badge-info right">1</span>
								<span class="badge badge-warning right">1</span>
								<span class="badge badge-danger right">1</span>
							</div>
						</div>	
					</div><hr style="margin-top: 3%; margin-bottom: 3%;">
					
					<div class="d-flex">
						<div class="uu_tien">
							<font color="#17a2b8">??u ti??n 3:</font>
						</div>
						<div style="width: 50%;">
							<div style="float: right;">
								<span class="badge badge-info right">1</span>
								<span class="badge badge-warning right">1</span>
								<span class="badge badge-danger right">1</span>
							</div>
						</div>	
					</div>
				</div>
				<div class="small-box-footer bg-gradient-dark footer_radius">
					<b>D??? ??N KINH DOANH TU???N 21.17 (A.Khanh + A.T?? + A. ??o??n Tu???n)</b>
				</div>
			</div>
		</div>
	</div> -->
	
	
	
</nav>
<!-- End Header -->