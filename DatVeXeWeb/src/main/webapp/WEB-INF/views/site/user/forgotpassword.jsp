<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/header.jsp" %>

 <section class="row-1">
             <div class="col mt-4">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                  <a class="nav-link active" id="videoEditing-tab" data-toggle="tab" href="#videoEditing" role="tab" aria-controls="videoEditing" aria-selected="true">Forgot password</a>
                </li>
              </ul>
              <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="videoEditing" role="tabpanel" aria-labelledby="videoEditing-tab">
              <form:form action="site/forgotPassword.htm"  method="post" modelAttribute="khach_hang">
                      <div class="card">
                          <div class="card-header">
                              Forgot password
                          </div>
                          <div class="card-body">
                              <div class="row">
                                  <div class="col">
                                      <div class="form-group">
                                        <label for="username">Username</label>
                                        <form:input type="text" class="form-control" path="username"  aria-describedby="usernameHid" placeholder="Username"/>
                                      </div>
                                      <div>
                                      <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="email" class="form-control" name="email"  placeholder="Email"/>
                                      </div>
                                      <button class="btn btn-md btn-black" type="submit"
												id="form-submit" name="sendcode">Send Code</button>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&ensp;&nbsp;&nbsp;
											 <input style="width: 50%" name="code"
												class="input-sm form-full" type="text" placeholder="Email Validation Code"> <br>
												</div>
                                  </div>
                                   <div class="col">
                                      <div class="form-group">
                                        <label for="password">Password</label>
                                        <form:input type="password" class="form-control" path="password" aria-describedby="usernameHid" placeholder="Username"/>
                                      </div>
                                      <div class="form-group">
                                        <label for="confirm">Confirm Password</label>
                                        <input type="password" class="form-control" name="confirm"  placeholder="Password"/>
                                      </div>
                                   
												
                                  </div>
                              </div>
                          </div>
                          <div style="color: green;">${message }</div>
                           <div class="card-footer text-muted">
                              <button class="btn btn-success" type="submit" name="change">Retrive</button>
                          </div>
                         
                      </div>
</form:form>
       
                </div>
              </div>
            </div>
           </section>


<%@include file="/WEB-INF/views/include/footer.jsp" %>