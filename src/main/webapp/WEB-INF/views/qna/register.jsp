<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="../includes/header.jsp"%>
<main
  class="main-content position-relative max-height-vh-100 h-100 border-radius-lg"
>
  <%@ include file="../includes/uppernav.jsp"%>
  <div class="container-fluid py-4">
    <div class="row"></div>
    <div class="row">
      <div class="col-md-10 mt-4">
        <div class="card">
          <div class="card-header pb-0 px-3">
            <h6 class="mb-0">문의하기</h6>
          </div>
          <div class="card-body pt-4 p-3">
            <ul class="list-group">
              <li
                class="list-group-item border-0 d-flex p-4 mb-2 bg-gray-100 border-radius-lg"
              >
                <div class="d-flex flex-column">
                  <form
                    action="insert"
                    method="post"
                    enctype="multipart/form-data"
                  >
                    <div class="form-group">
                      <label for="title">제목:</label>
                      <input
                        type="text"
                        class="form-control"
                        id="title"
                        placeholder="제목을 입력해주세요"
                        name="title"
                      />
                    </div>
                    <div class="form-group">
                      <label for="writer">작성자:</label>
                      <input
                        type="text"
                        class="form-control"
                        id="writer"
                        name="writer"
                        value="${sMember.id}"
                        readonly
                      />
                    </div>
                    <div class="form-group">
                      <label for="fileUpload">파일업로드:</label>
                      <input
                        type="file"
                        class="form-control"
                        id="uploads"
                        name="uploads"
                        multiple
                      />
                    </div>
                    <div class="form-group">
                      <label for="content">내용:</label>
                      <textarea
                        class="form-control"
                        rows="10"
                        id="content"
                        name="content"
                        placeholder="내용을 입력해주세요"
                      ></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary btn-sm">
                      Submit
                    </button>
                  </form>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <%@ include file="../includes/footer.jsp"%>
</main>
<%@ include file="../includes/fixedsetting.jsp"%>
