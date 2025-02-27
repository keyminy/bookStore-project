<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="/img/favicon.png">

    <!-- Custom fonts for this template -->
    <link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

    <style>
        .nav-link {
            padding-top: 2rem!important;
            padding-bottom: 2rem!important;
        }
    </style>

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/admin/main">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">Admin Page</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Tables -->
        <li class="nav-item active">
            <a class="nav-link" href="/admin/book">
                <i class="fas fa-fw fa-table"></i>
                <span>책 정보 관리</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Tables -->
        <li class="nav-item active">
            <a class="nav-link" href="/admin/member">
                <i class="fas fa-fw fa-table"></i>
                <span>회원 정보 관리</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Tables -->
        <li class="nav-item active">
            <a class="nav-link" href="/admin/order">
                <i class="fas fa-fw fa-table"></i>
                <span>주문 관리</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">
        
                <!-- Nav Item - Tables -->
        <li class="nav-item active">
            <a class="nav-link" href="/main">
                <i class="fas fa-fw fa-table"></i>
                <span>유저 메인 페이지로 가기</span></a>
        </li>
        

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <form class="form-inline">
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>
                </form>

                <!-- Topbar Search -->
                <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                    <div class="input-group">
                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                               aria-label="Search" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">
                                <i class="fas fa-search fa-sm"></i>
                            </button>
                        </div>
                    </div>
                </form>

                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">

                    <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                    <li class="nav-item dropdown no-arrow d-sm-none">
                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search fa-fw"></i>
                        </a>
                        <!-- Dropdown - Messages -->
                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                             aria-labelledby="searchDropdown">
                            <form class="form-inline mr-auto w-100 navbar-search">
                                <div class="input-group">
                                    <input type="text" class="form-control bg-light border-0 small"
                                           placeholder="Search for..." aria-label="Search"
                                           aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fas fa-search fa-sm"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>
                    <div class="topbar-divider d-none d-sm-block"></div>

                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">admin</span>
                            <img class="img-profile rounded-circle"
                                 src="/img/admin.png">
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="/logout">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Logout
                            </a>
                        </div>
                    </li>

                </ul>

            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid" style="padding-left: 17.5rem; padding-right: 17.5rem;">

                <!-- Page Heading -->
                <h1 class="h3 mb-2 text-gray-800">Book Insert Form</h1>
                <p class="mb-4">새로운 책을 등록하는 Page입니다.</p>

                <form method="post" action="/admin/bookInsert" enctype="multipart/form-data" onsubmit="return checkSubmit()">
                    <div style="display: inline-block; width: 100%;">
                        <div style="float: left; width: 40%;">
                            <div class="mb-3">
                                <label for="title" class="form-label">Book Title</label>
                                <input type="text" class="form-control" id="title" name="title" aria-describedby="titleHelp" value="${bookInfo.title}"
                                       style="width: 100%;">
                                <div id="titleHelp" class="form-text">등록할 책의 제목을 입력해주세요.</div>
                            </div>
                            <div class="mb-3">
                                <label for="author" class="form-label">Author</label>
                                <input type="text" class="form-control" id="author" name="author" aria-describedby="authorHelp" value="${bookInfo.author}"
                                       style="width: 100%;">
                                <div id="authorHelp" class="form-text">등록할 책의 작가를 입력해주세요.</div>
                            </div>
                            <div class="mb-3">
                                <label for="publisher" class="form-label">Publisher</label>
                                <input type="text" class="form-control" id="publisher" name="publisher" aria-describedby="publisherHelp" value="${bookInfo.publisher}"
                                       style="width: 100%;">
                                <div id="publisherHelp" class="form-text">등록할 책의 출판사 입력해주세요.</div>
                            </div>
                            <div class="mb-3">
                                <label for="pubdate" class="form-label">Pubdate - ex) 2022-02-16</label>
                                <input type="text" class="form-control" id="pubdate" name="pubdate" aria-describedby="pubdateHelp" value="${bookInfo.pubdate}"
                                       style="width: 100%;">
                                <div id="pubdateHelp" class="form-text">등록할 책의 출판일자를 형식에 맞게 입력해주세요.</div>
                            </div>
                            <div class="mb-3">
                                <label for="price" class="form-label">Price - 숫자만 입력 가능합니다.</label>
                                <input type="text" pattern="[0-9]+" class="form-control" id="price" name="price" aria-describedby="priceHelp" value="${bookInfo.price}"
                                       style="width: 100%;">
                                <div id="priceHelp" class="form-text">등록할 책 가격을 입력해주세요.</div>
                            </div>
                        </div>
                        <div style="float: left; margin-left: 8rem; margin-top: 6rem; text-align: center">
                            <div class="mb-3" style="margin-left: 5.5rem;">
                                <label for="description" class="form-label">Image</label>
                                <input type="file" name="filename" onchange="readURL(this);" size="50" maxlength="50">
                            </div>
                            <div class="mb-3">
                                <img id="preview" src="" alt="none" style="width: 166px; height: 205px;">
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="description" class="form-label">Description</label>
                        <textarea class="form-control" id="description" name="description" rows="5">${bookInfo.description}</textarea>
                    </div>
                    <div class="mb-3">
                        <label for="description" class="form-label">Category</label>
                        <select class="form-select" aria-label="Default select example" name="cate_no" style="margin-left: 10px;">
                            <c:forEach items="${cateInfo}" var="info">
                                <option value="${info.cate_no}">${info.cate_name}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="description" class="form-label">책 재고</label>
                        <input type="number" id="stock" name="stock" value="0"  style="text-align:center; margin-left: 1rem;"/>
                    </div>
                    <div class="mb-3">
                    	 <label for="description" class="form-label">판매 상태</label>
                    	<select name="itemSellStatus" style="margin-left: 10px;">
                    		<option value="SELL">판매 중</option>
                    		<option value="SOLD_OUT">품절</option>
                    	</select>
                    </div>
                    <button type="submit" class="btn btn-outline-primary" style="float: right;">등록</button>
                    <button type="button" class="btn btn-outline-danger" onclick="history.back()" style="float: right; margin-right: 1rem;">취소</button>
                </form>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright &copy; Meta-BookStore 2022</span>
                </div>
            </div>
        </footer>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="login.html">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="/js/demo/datatables-demo.js"></script>

<!-- insert Form validation 역할 -->
<script src="/js/admin/insertBook.js"></script>

<!-- Image Upload -->
<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                document.getElementById('preview').src = e.target.result;
            };
            reader.readAsDataURL(input.files[0]);
        } else {
            document.getElementById('preview').src = "";
        }
    }
</script>

</body>

</html>