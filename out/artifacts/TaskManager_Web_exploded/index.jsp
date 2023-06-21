<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="Nodels.Task" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">

<head>
    <title>Task manager</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
            crossorigin="anonymous"></script>
    <style>
        .btn {
            margin-top: 20px;
        }

        .table {
            margin-top: 20px;
        }
    </style>
</head>

<body>
<%@include file="navbar.jsp"%>
<button class="btn btn-primary" type="button"  data-bs-toggle="modal"
       data-bs-target="#exampleModal" style="background-color:darkblue"; color="white"> +Добавить задание
</button>
<div class="container">
    <div class="row">
        <div class="col-md-10">
            <table class="table">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Наименование</th>
                <th scope="col">Крайник срок</th>
                <th scope="col">Выполнено</th>
                <th scope="col">Детали</th>
            </tr>
            </thead>
            <tbody>
            <%
                ArrayList<Task> tasks = (ArrayList<Task>) request.getAttribute("zadanya");
                for (Task task:tasks) {
            %>
            <tr>
                <td><%=task.getId()%></td>
                <td><%=task.getName()%></td>
                <td><%=task.getDeallineDate()%></td>
                <td>YES</td>
                <td>
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                            data-bs-target="#updateModal<%=task.getId()%>" style="background-color:darkblue";>
                        Details
                    </button>

                    <div class="modal fade" id="updateModal<%=task.getId()%>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                         aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <form action="/delete-task" method="post">
                                    <div class="modal-header">
                                        <h5 class="modal-title">Детали задачи</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">


                                        <label class="col-form-label">Наименование:</label>
                                        <input type="text" class="form-control" name="t_name" value="<%=task.getName()%>">


                                        <label class="col-form-label">Описание:</label>
                                        <textarea class="form-control" name="t_desc"><%=task.getDesciption()%></textarea>

                                        <label class="col-form-label">Выполнена:</label>
                                        <select class="form-select" aria-label="Default select example">
                                            <option value="y">Да</option>
                                            <option value="n">Нет</option>
                                        </select>

                                        <label  class="col-form-label">Крайний срок:</label>
                                        <input type="date" class="form-control" name="t_deadline" value="<%=task.getDeallineDate()%>">


                                    </div>
                                    <div class="modal-footer">
                                        <input type="hidden" name="id" value="<%=task.getId()%>">
                                        <button type="submit" class="btn btn-danger">Удалить</button>
                                        <button type="button" class="btn btn-primary">Сохранить</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>

            <%
                }
            %>
            </tbody>
            </table>
        </div>
    </div>
</div>

<%@include file="modalAddTask.jsp"%>

</body>

</html>