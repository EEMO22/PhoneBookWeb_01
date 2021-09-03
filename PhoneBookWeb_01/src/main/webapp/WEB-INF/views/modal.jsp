<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="container">
	<button class="btn btn-dark btn-sm" data-toggle="modal" data-target="#addDialog">
	추가</button>
		<div class="modal fade" role="dialog" id="addDialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5>새 주소 등록</h5>
						<button class="close" data-dismiss="modal" aria-label="close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form action="<%= request.getContextPath() %>/ps" method="POST" id="add"
							class="need-validation" novalidate>
							<div class="form-row row">
								<input type="hidden" value="add" name="a" />
								<div class="form-group col-sm-8">
									<label for="name">이름</label><br />
									<input type="text" name="name" id="name" class="form-control" required>
									<div class="invalid-feedback">
										이름 입력!
									</div>
								</div>
								<div class="form-group col-sm-12">
									<label for="hp">휴대전화</label><br />
									<input type="text" name="hp" id="hp" class="form-control" required/>
									<div class="invalid-feedback">
										휴대전화 번호 입력!
									</div>
								</div>
								
								<div class="form-group col-sm-12">
									<label for="tel">집전화</label><br />
									<input type="text" name="tel" id="tel" class="form-control" required/>
									<div class="invalid-feedback">
										집전화 번호 입력!
									</div>
								</div>
								<input type="submit" value="주소 등록" id="btn" button class="btn btn-dark btn-sm" />				
							</div>	
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		(function() {
		  'use strict';
		  window.addEventListener('load', function() {
		    var forms = document.getElementsByClassName('need-validation');
		    var validation = Array.prototype.filter.call(forms, function(form) {
		      form.addEventListener('submit', function(event) {
		        if (form.checkValidity() === false) {
		          event.preventDefault();
		          event.stopPropagation();
		        }
		        form.classList.add('was-validated');
		      }, false);
		    });
		  }, false);
		})();
</script>