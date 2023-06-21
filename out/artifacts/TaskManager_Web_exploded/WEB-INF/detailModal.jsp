<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="exampleModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <form action="add-task" method="post">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
        </div>
        <div class="modal-body">


          <label class="col-form-label">Наименование:</label>
          <input type="text" class="form-control"  name="t_name">


          <label class="col-form-label">Описание:</label>
          <textarea class="form-control" name="t_desc"></textarea>


          <label  class="col-form-label">Крайний срок:</label>
          <input type="date" class="form-control" name="t_deadline">


        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Add</button>
        </div>
      </form>
    </div>
  </div>
</div>