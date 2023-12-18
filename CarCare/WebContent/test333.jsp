<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>다중 메뉴 선택</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css">
</head>
<body class="bg-gray-100">
    <div class="container mx-auto p-8">
        <h2 class="text-2xl font-bold mb-4">다중 메뉴 선택 및 검색</h2>
        <!-- 다중 메뉴 선택 -->
        <div class="mb-4">
            <label class="block text-sm font-medium text-gray-700 mb-2">메뉴 선택:</label>
            <div class="flex space-x-4">
                <label class="flex items-center">
                    <input type="checkbox" class="menu-checkbox" value="menu1">
                    <span class="ml-2">메뉴 1</span>
                </label>
                <label class="flex items-center">
                    <input type="checkbox" class="menu-checkbox" value="menu2">
                    <span class="ml-2">메뉴 2</span>
                </label>
                <label class="flex items-center">
                    <input type="checkbox" class="menu-checkbox" value="menu3">
                    <span class="ml-2">메뉴 3</span>
                </label>
            </div>
        </div>

        <!-- 검색 결과 표시 -->
        <div class="mb-4">
            <label class="block text-sm font-medium text-gray-700 mb-2">선택된 메뉴:</label>
            <div id="selected-menu" class="bg-white p-4 rounded border border-gray-300"></div>
        </div>

        <!-- 검색 버튼 -->
        <button id="search-btn" class="bg-blue-500 text-white px-4 py-2 rounded-md hover:bg-blue-700 transition">
            검색
        </button>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const menuCheckboxes = document.querySelectorAll('.menu-checkbox');
            const selectedMenuDiv = document.getElementById('selected-menu');
            const searchButton = document.getElementById('search-btn');

            menuCheckboxes.forEach(checkbox => {
                checkbox.addEventListener('change', updateSelectedMenu);
            });

            function updateSelectedMenu() {
                const selectedMenus = Array.from(menuCheckboxes)
                    .filter(checkbox => checkbox.checked)
                    .map(checkbox => checkbox.value);

                // 선택된 메뉴 표시
                selectedMenuDiv.innerHTML = selectedMenus.length > 0
                    ? '<p>선택된 메뉴: ' + selectedMenus.join(', ') + '</p>'
                    : '<p>선택된 메뉴 없음</p>';
            }

            searchButton.addEventListener('click', function () {
                updateSelectedMenu();

                // 검색 기능 추가 (여기에 검색에 대한 로직 추가)
                // 예: ajax 요청 등
                console.log('검색 수행:', selectedMenuDiv.innerText);
            });
        });
    </script>
</body>
</html>

