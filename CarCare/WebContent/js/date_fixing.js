        const daysTag = document.querySelector("#days"),
            currentDate = document.querySelector("#currentDate"),
            prevNextIcon = document.querySelectorAll("#icons span");

        let date = new Date(),
            currYear = date.getFullYear(),
            currMonth = date.getMonth();

        const months = [
            "1월", "2월", "3월", "4월", "5월", "6월", "7월",
            "8월", "9월", "10월", "11월", "12월"
        ];

        const renderCalendar = () => {
            let firstDayofMonth = new Date(currYear, currMonth, 1).getDay(),
                lastDateofMonth = new Date(currYear, currMonth + 1, 0).getDate(),
                lastDayofMonth = new Date(currYear, currMonth, lastDateofMonth).getDay(),
                lastDateofLastMonth = new Date(currYear, currMonth, 0).getDate();
            let liTag = "";
            for (let i = firstDayofMonth; i > 0; i--) {
                liTag += `<li class="select-none text-transparent bg-transparent">${lastDateofLastMonth - i + 1}</li>`;
            }
            for (let i = 1; i <= lastDateofMonth; i++) {
                let isSelectedDate = i === date.getDate() && currMonth === new Date().getMonth() &&
                    currYear === new Date().getFullYear();
                let isToday = isSelectedDate ? "selected-date" : "cursor-pointer";
                liTag += `<li class="${isToday}" onclick="selectDate(event, ${currYear}, ${currMonth + 1}, ${i})">${i}</li>`;
            }
            for (let i = lastDayofMonth; i < 6; i++) {
                liTag += `<li class="select-none text-transparent bg-transparent">${i - lastDayofMonth + 1}</li>`
            }
            currentDate.innerText = `${months[currMonth]} ${currYear}`;
            daysTag.innerHTML = liTag;
        }

        const selectDate = (event, selectedYear, selectedMonth, selectedDay) => {
            // 이전에 선택된 날짜에 대한 스타일을 제거
            const selectedDate = document.querySelector(".selected-date");
            if (selectedDate) {
                selectedDate.classList.remove("selected-date");
            }

            // 클릭된 날짜에 새로운 스타일을 추가
            const clickedDate = event.target;
            clickedDate.classList.add("selected-date");

            // hidden input 요소에 선택된 날짜 정보 추가
            const selectedDateInput = document.getElementById("selectedDate");
            selectedDateInput.value = `${selectedYear}년 ${selectedMonth}월 ${selectedDay}일`;
        }

        // 폼 제출 버튼 클릭 시 전송 처리
        function submitForm() {
            // 폼을 서브밋합니다.
            document.getElementById("yourFormId").submit();
        }

        renderCalendar();
        prevNextIcon.forEach(icon => {
            icon.addEventListener("click", () => {
                currMonth = icon.id === "prev" ? currMonth - 1 : currMonth + 1;
                if (currMonth < 0 || currMonth > 11) {
                    date = new Date(currYear, currMonth, new Date().getDate());
                    currYear = date.getFullYear();
                    currMonth = date.getMonth();
                } else {
                    date = new Date();
                }
                renderCalendar();
            });
        });