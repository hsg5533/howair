<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt"%> <%@ include
file="../includes/header.jsp"%>
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
            <h6 class="mb-0">글보기</h6>
          </div>
          <div class="card-body pt-4 p-3">
            <ul class="list-group">
              <li
                class="list-group-item border-0 d-flex p-4 mb-2 bg-gray-100 border-radius-lg"
              >
                <div class="d-flex flex-column">
                  <div class="form-group">
                    <label for="title">글번호:</label>
                    <input
                      type="text"
                      class="form-control"
                      id="bno"
                      name="bno"
                      value="${board.bno}"
                      readonly
                    />
                  </div>
                  <div class="form-group">
                    <label for="title">제목:</label>
                    <input
                      type="text"
                      class="form-control"
                      id="title"
                      placeholder="제목을 입력해주세요"
                      name="title"
                      value="${board.title}"
                      readonly
                    />
                  </div>
                  <div class="form-group">
                    <label for="writer">작성자:</label>
                    <input
                      type="text"
                      class="form-control"
                      id="writer"
                      name="writer"
                      value="${board.writer}"
                      readonly
                    />
                  </div>
                  <div class="form-group">
                    <label for="fileUpload">업로드된 파일:</label>
                    <ul>
                      <c:forEach items="${board.fileList}" var="fileInfo">
                        <li style="list-style: nome">
                          <!-- 이미지 파일인 경우 -->
                          <c:choose>
                            <c:when test="${fileInfo.filetype=='image'}">
                              <img
                                src="/resources/upload/${fileInfo.savefolder}/${fileInfo.savefile}"
                                height="50"
                              />
                            </c:when>

                            <c:otherwise>
                              <img
                                src="/resources/upload/file.png"
                                height="20"
                              />
                            </c:otherwise>
                          </c:choose>
                          ${fileInfo.originfile}
                          <a
                            class="filedown"
                            href="#"
                            fno="${fileInfo.fno}"
                            sfolder="${fileInfo.savefolder}"
                            ofile="${fileInfo.originfile }"
                            sfile="${fileInfo.savefile}"
                            >[다운로드]</a
                          >
                        </li>
                      </c:forEach>
                    </ul>
                  </div>
                  <div class="form-group">
                    <label for="content">내용:</label>
                    <textarea
                      class="form-control"
                      rows="10"
                      cols="200"
                      id="content"
                      name="content"
                      placeholder="내용을 입력해주세요"
                      readonly="readonly"
                    >
${board.content}</textarea
                    >
                  </div>
                  <hr />
                  <div class="form-group text-right">
                    <!-- 세션의 로그인 값과 게시글의 작성자가 같을 때. 즉, 로그인한 아이디와 게시글의 작성자가 같을 경우 -->
                    <c:if
                      test="${sMember.id==board.writer || sMember.id=='admin'}"
                    >
                      <button
                        type="button"
                        class="btn btn-secondary btn-sm"
                        id="btnDelete"
                      >
                        삭제하기
                      </button>
                    </c:if>
                    <button
                      type="button"
                      class="btn btn-secondary btn-sm"
                      id="btnList"
                    >
                      목록보기
                    </button>
                  </div>
                </div>
              </li>
              <c:if test="${empty reply.bno=='False'}">
                <li
                  class="list-group-item border-0 d-flex p-4 mb-2 mt-3 bg-gray-100 border-radius-lg"
                >
                  <div class="d-flex flex-column">
                    <div class="form-group">
                      <label for="title">답글번호:</label>
                      <input
                        type="text"
                        class="form-control"
                        id="bno"
                        name="bno"
                        value="re:${reply.rno}"
                        readonly
                      />
                    </div>
                    <div class="form-group">
                      <label for="title">답글 제목:</label>
                      <input
                        type="text"
                        class="form-control"
                        id="title"
                        placeholder="제목을 입력해주세요"
                        name="title"
                        value="re:${board.title}"
                        readonly
                      />
                    </div>
                    <div class="form-group">
                      <label for="writer">작성자:</label>
                      <input
                        type="text"
                        class="form-control"
                        id="writer"
                        name="writer"
                        value="${reply.writer}"
                        readonly
                      />
                    </div>
                    <div class="form-group">
                      <label for="content">내용:</label>
                      <textarea
                        class="form-control"
                        rows="10"
                        cols="200"
                        id="content"
                        name="content"
                        readonly="readonly"
                      >
${reply.content}</textarea
                      >
                    </div>
                  </div>
                </li>
              </c:if>
              <c:if test="${sMember.id  == 'admin' }">
                <div class="card-header pb-0 px-3">
                  <h6 class="mb-0">답글쓰기</h6>
                </div>
                <li
                  class="list-group-item border-0 d-flex p-4 mb-2 mt-3 bg-gray-100 border-radius-lg"
                >
                  <div class="d-flex flex-column">
                    <form
                      action="replyinsert"
                      method="post"
                      enctype="multipart/form-data"
                    >
                      <div class="form-group">
                        <label for="title">글번호:</label>
                        <input
                          type="text"
                          class="form-control"
                          id="bno"
                          name="bno"
                          value="${board.bno}"
                          readonly
                        />
                      </div>
                      <div class="form-group">
                        <label for="title">답글 제목:</label>
                        <input
                          type="text"
                          class="form-control"
                          id="title"
                          placeholder="제목을 입력해주세요"
                          name="title"
                          value="re:${board.title}"
                          readonly
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
                        <label for="content">내용:</label>
                        <textarea
                          class="form-control"
                          rows="10"
                          cols="200"
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
              </c:if>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <%@ include file="../includes/footer.jsp"%>
</main>
<%@ include file="../includes/fixedsetting.jsp"%>
<script type="text/javascript">
  // 다운로드 링크를 눌렀을 경우
  $(".filedown").click(function () {
    // 현재 해당하는 fno의 값을 가져온다.
    var fno = $(this).attr("fno");
    // 파일 번호, 원본파일, 저장된 파일을 출력
    alert(
      "fno:" +
        fno +
        "원본:" +
        $(this).attr("ofile") +
        "실제:" +
        $(this).attr("sfile")
    );
    location.href = "/qna/download/" + fno;
  });

  $("#btnDelete").click(function () {
    if (confirm("정말 삭제할까요?")) {
      location.href = "/qna/delete/${board.bno}";
    }
  });

  $("#btnList").click(function () {
    if (confirm("정말 이동할까요?")) {
      location.href =
        "/qna/list?pageNum=${pageNum}&field=${field}&word=${word}";
    }
  });
</script>
