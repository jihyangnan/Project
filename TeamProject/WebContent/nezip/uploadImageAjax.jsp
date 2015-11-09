<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="thumbnail" style="margin: 10px 0;">
	<img src="upload/${image}" style="width: 100%; height: 150px">
	<button class="delete-photo-btn overlay-btn" data-photo="${image}" 
		style="position: absolute;top: 30px;right: 20px;width: 30px;height: 30px;padding-top: 3px;border: 0;
   		border-radius: 2px;opacity: 0.7; background:#000">
  	<i class="fa fa-trash-o" style="color: white"></i>
</button>
</div>