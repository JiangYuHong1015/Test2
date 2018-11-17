<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../common/top.jsp"%>
<div class="clearfix"></div>
<div class="row">
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="yui3-u-1 center-ask fix">
			<div class="yui3-u-1 center-ask fix">
				<span class="cen-note-t left"> <a href="/my/jobOE"
					class="yui3-u uc-ask-tab-on">酒店订单</a> <a
					href="${pageContext.request.contextPath }/user/uploadPhoto"
					class="yui3-u ">旅游订单</a> <a
					href="${pageContext.request.contextPath }/user/uploadPhoto"
					class="yui3-u ">机票订单</a>
				</span>
			</div>
		</div>


		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="x_panel">
				<div class="x_content">
					<form method="post" action="hotelOrderView">
						<input type="hidden" name="pageIndex" value="1" />
				    <ul>
						<li>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">酒店名称:</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input name="queryName" type="text" class="form-control col-md-7 col-xs-12" value="${queryName }">
								</div>
							</div>
						</li>
						
						<li>
						<div class="item form-group">
		           			<label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">订单状态</label>
		          
				            <div class="col-md-6 col-sm-6 col-xs-12 form-group has-feedback">
				              <select name="status" id="status" class="form-control has-feedback-left">
				              	<option value="">请选择</option>
				              	<option value="1">已预定</option>
				              	<option value="2">已取消</option>
				              	<option value="3">已完成</option>
				              </select>
				              <span class="fa fa-envelope form-control-feedback left" aria-hidden="true"></span>
				            </div>
		         		  </div>
					  </li>
						<button type="submit" class="btn btn-primary"> 查 &nbsp;&nbsp;&nbsp;&nbsp;询 </button>
					</ul>
				</form>
				
				
					<p class="text-muted font-13 m-b-30"></p>
					<div id="datatable-responsive_wrapper"
						class="dataTables_wrapper form-inline dt-bootstrap no-footer">
						
						<div class="row">
							<div class="col-sm-12">
								<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap dataTable no-footer dtr-inline collapsed"
									cellspacing="0" width="100%" role="grid" aria-describedby="datatable-responsive_info" style="width: 100%;">
									
									<tbody>
										<c:forEach var="hotelorder" items="${hotelorderList }">
											<tr role="row" class="odd">
											<td>
											<div class="yui3-g">
												<div class="yui3-u-1">
													<div id="purchase-jobOE-grid" class="list-view">
														<ul class="fix list-ul">
															<li class="courseDetail fix"><a href="http://www.kgc.cn/job/oe/31257.shtml" class="courseImg left" target="_blank">
																<img src="${hotelorder.hotelpic }" width="220" height="124" onerror="this.src='/img/video_default20160105.jpg'" /></a>
																<div class="courseInfo left">
																	<input type="hidden" id="api" value="http://api.kgc.cn">
																		<a class="courseTitle f16 black" href="http://www.kgc.cn/job/oe/31257.shtml" target="_blank">${hotelorder.hotelname }</a><br/>
																				
																			<span>入住时间：${hotelorder.checkInDate } 共计${hotelorder.totaldays }天</span><br/>
																			<span>地址：${hotelorder.hoteladdress }</span>
																			<div class="coursePro f14" id="per_31257" data-code="31257"></div>
																
																			<ul class="courseNote f14">
																				<li><a href="http://www.kgc.cn/my/note.shtml?id=31257">删除</a></li>
																				<li><a href="http://www.kgc.cn/my/note/comment.shtml?id=31257">详情</a></li>
																				<!-- <li><a href="http://www.kgc.cn/my/note/comment.shtml?id=31257">详情</a></li> -->
																				<li><a class="commentAdd" hotelId="${hotelorder.id }" hotelOrderNo="${hotelorder.orderno }" hotelName="${hotelorder.hotelname }">评论</a></li>
																						
																			</ul>
										 						</div>
																 <div class="continue">
																	<a href="javascript:void(0);" class="catalog-btn btn_study f14"
																		data-id="31853" data-job="31257" data-course="100"
																		data-name="Spring MVC扩展和SSM框架整合">再次预订</a>
																 </div>
															</ul>
														</div>
													</div>
												</div>
											</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5">
								<div class="dataTables_info" id="datatable-responsive_info"
									role="status" aria-live="polite">共${pages.totalCount }条记录
									${pages.currentPageNo }/${pages.totalPageCount }页</div>
							</div>
							<div class="col-sm-7">
								<div class="dataTables_paginate paging_simple_numbers"
									id="datatable-responsive_paginate">
									<ul class="pagination">
										<c:if test="${pages.currentPageNo > 1}">
											<li class="paginate_button previous"><a
												href="javascript:page_nav(document.forms[0],1);"
												aria-controls="datatable-responsive" data-dt-idx="0"
												tabindex="0">首页</a>
											</li>
											<li class="paginate_button "><a
												href="javascript:page_nav(document.forms[0],${pages.currentPageNo-1});"
												aria-controls="datatable-responsive" data-dt-idx="1"
												tabindex="0">上一页</a>
											</li>
										</c:if>
										<c:if test="${pages.currentPageNo < pages.totalPageCount }">
											<li class="paginate_button "><a
												href="javascript:page_nav(document.forms[0],${pages.currentPageNo+1 });"
												aria-controls="datatable-responsive" data-dt-idx="1"
												tabindex="0">下一页</a>
											</li>
											<li class="paginate_button next"><a
												href="javascript:page_nav(document.forms[0],${pages.totalPageCount });"
												aria-controls="datatable-responsive" data-dt-idx="7"
												tabindex="0">最后一页</a>
											</li>
										</c:if>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<div class="clearfix"></div>
		<br />
		<br />
</div>
</div>

<%@include file="../common/down.jsp"%>
<script src="${pageContext.request.contextPath }/statics/localjs/rollpage.js"></script>
<script src="${pageContext.request.contextPath }/statics/localjs/hotelOrderView.js"></script>
