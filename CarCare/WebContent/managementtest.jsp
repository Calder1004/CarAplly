<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservation Management</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f5f5f5;
            cursor: pointer;
        }

        #editForm {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Reservation Management</h1>

        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <tr onclick="showEditForm('1')">
                    <td>1</td>
                    <td>John Doe</td>
                    <td>false</td>
                </tr>
                <tr onclick="showEditForm('2')">
                    <td>2</td>
                    <td>Jane Smith</td>
                    <td>false</td>
                </tr>
                <!-- Add more rows as needed -->
            </tbody>
        </table>

        <div id="editForm" style="display: none;">
            <form id="reservationForm">
                <div class="mb-3">
                    <label for="editReservationId" class="form-label">ID:</label>
                    <input type="text" class="form-control" id="editReservationId" name="editReservationId" readonly>
                </div>

                <div class="mb-3">
                    <label for="editReservationName" class="form-label">Name:</label>
                    <input type="text" class="form-control" id="editReservationName" name="editReservationName">
                </div>

                <div class="mb-3">
                    <label for="editReservationStatus" class="form-label">Status:</label>
                    <input type="text" class="form-control" id="editReservationStatus" name="editReservationStatus">
                </div>

                <button type="button" class="btn btn-primary" onclick="updateReservation()">Update Reservation</button>
            </form>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function showEditForm(reservationId) {
            alert('Edit reservation with ID: ' + reservationId);

            // 모달에 예약 정보 채움 (임의의 정보 사용)
            $('#editReservationId').val(reservationId);
            $('#editReservationName').val('John Doe'); // 예약 이름을 가져와서 설정
            $('#editReservationStatus').val('true'); // 예약 상태를 가져와서 설정

            // 모달을 표시
            $('#editForm').show();
        }

        function updateReservation() {
            // AJAX를 사용하여 서버에 수정된 예약을 전송
            $.ajax({
                type: 'POST',
                url: 'updateReservation', // 서버에서 예약을 업데이트할 엔드포인트
                data: $('#reservationForm').serialize(),
                success: function(response) {
                    alert('Reservation updated successfully!');
                    location.reload();
                },
                error: function(error) {
                    console.error('Error updating reservation: ', error);
                }
            });
        }
    </script>
</body>
</html>