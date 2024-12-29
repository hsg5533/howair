<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt"%> <%@ include
file="../includes/header.jsp"%>
<main
  class="main-content position-relative max-height-vh-100 h-100 border-radius-lg"
>
  <%@ include file="../includes/uppernav.jsp"%>
  <div class="row">
    <div class="col-12">
      <div class="card my-4">
        <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
          <div
            class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3"
          >
            <h6 class="text-white text-capitalize ps-3">문의 게시판</h6>
          </div>
        </div>
        <div class="card-body px-0 pb-2">
          <div class="table-responsive p-0">
            <a class="btn btn-link text-secondary mb-0" href="/qna/register"
              >글쓰기</a
            >
            <div class="text-secondary text-xs opacity-7">
              <table class="position-relative table align-items-center mb-0">
                <thead>
                  <tr>
                    <th>번호</th>
                    <th>제목/작성자</th>
                    <th>작성일자</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach items="${list}" var="board">
                    <tr>
                      <td>
                        <p class="text-xs font-weight-bold mb-0 px-3">
                          ${board.bno}
                        </p>
                      </td>
                      <td>
                        <div class="d-flex px-2 py-1">
                          <div
                            class="d-flex flex-column justify-content-center"
                          >
                            <h6 class="mb-0 text-sm">
                              <a
                                class="text-xs font-weight-bold mb-0"
                                href="/qna/detail?bno=${board.bno}&pageNum=${p.currentPage}&field=${field}&word=${word}"
                                >${board.title}</a
                              >
                            </h6>
                            <p class="text-xs font-weight-bold mb-0">
                              ${board.writer}
                            </p>
                          </div>
                        </div>
                      </td>
                      <td>
                        <p class="text-xs font-weight-bold mb-0 px-3">
                          <fmt:formatDate
                            pattern="yyyy-MM-dd"
                            value="${board.regdate}"
                          />
                        </p>
                      </td>
                    </tr>
                  </c:forEach>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <div
        class="d-flex justify-content-between mt-3 input-group input-group-outline"
      >
        <ul class="pagination">
          <!-- 이전 -->
          <c:if test="${p.startPage>p.blockSize }">
            <li class="page-item">
              <a
                class="page-link"
                href="list?pageNum=${p.startPage-p.blockSize}&field=${field}&word=${word}"
                >Previous</a
              >
            </li>
          </c:if>
          <!--페이지 리스트-->
          <c:forEach begin="${p.startPage}" end="${p.endPage}" var="i">
            <li class="page-item">
              <a
                class="page-link"
                href="list?pageNum=${i}&field=${field}&word=${word}"
                >${i}</a
              >
            </li>
          </c:forEach>
          <!-- 다음 -->
          <c:if test="${p.endPage < p.totPage }">
            <li class="page-item">
              <a
                class="page-link"
                href="list?pageNum=${p.endPage+1}&field=${field}&word=${word}"
                >Next</a
              >
            </li>
          </c:if>
        </ul>
        <form class="form-inline" action="/qna/list" id="searchFrm">
          <select name="field" class="form-select">
            <option value="" disabled selected>--</option>
            <option value="title" ${ field=='title' ? 'selected' : '' }>제목
            <option value="writer" ${ field=='writer' ? 'selected' : '' }>내용
            <option value="content" ${ (field=='content') ? 'selected' : ''
            }>작성자 <option value="cwt" ${ (field=='cwt') ? 'selected' : ''
            }>제목or내용or작성자
          </select>
          <input
            type="text"
            class="form-control mb-2 mr-sm-3"
            placeholder="Enter Search"
            name="word"
            value="${word}"
          />
          <button type="submit" class="btn btn-secondary mb-2 btn-sm">
            Search
          </button>
        </form>
      </div>
    </div>
  </div>
  <%@ include file="../includes/footer.jsp"%>
</main>
<%@ include file="../includes/fixedsetting.jsp"%>
