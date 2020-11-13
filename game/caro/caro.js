var n_column = 20;
var n_row = 20;
// New Game/ Reset
var td = document.getElementsByTagName('TD');
var btnReset = document.getElementById('btn-reset');
btnReset.addEventListener('click', function() {
    for (var i = 0; i < td.length; i++) {
        td[i].innerHTML = "";
    }
});

// Draw table caro board
var cr_table = document.getElementById("cr-table");
var arr = new Array;
for (var i = 0; i < n_column; i++) {
    var row = document.createElement('tr');
    arr[i] = new Array;
    for (var j = 0; j < n_row; j++) {
        var cell = document.createElement('td');
        cell.innerHTML = "";
        arr[i].push("");
        var turn = true;
        var x = 1;
        var o = 0;
        cell.addEventListener('click', function() {
            if (this.innerHTML == "") {
                if (turn) {
                    this.innerHTML = "X";
                    this.style.color = "rgb(240,23,23)";
                    this.style.fontWeight = "900";
                    cr_table.className = "player2";
                    turn = false;
                } else {
                    this.innerHTML = "O";
                    this.style.color = "rgb(1,111,184)";
                    this.style.fontWeight = "900";
                    cr_table.className = "player1";
                    turn = true;
                }
                check();
            }
        });
        row.appendChild(cell);
    }
    cr_table.appendChild(row);
}

// tạo mảng chứa giá trị X, O
var td = document.getElementsByTagName('TD');
function array() {
    for (var i = 0; i < td.length - 1; i++) {
        arr[parseInt(i / n_column)][i % n_column] = td[i].innerHTML;
    }
}
array();

// Check theo dòng Ngang
function Ngang(i, j) { // Truyền vào vị trí check
    var dem = 1;
    for (var t = 1; t < 5; t++) { // Check bên trái
        if ((j - t) >= 0) { // Giới hạn
            if (arr[i][(j - t)] == arr[i][j]) {
                dem++;
            } else {
                break;
            }
        } else {
            break;
        }
    }
    for (var t = 1; t < 5; t++) { // Check bên phải
        if (j + t < n_column) { // Giới hạn
            if (arr[i][(j + t)] == arr[i][j]) {
                dem++;
            } else {
                break;
            }
        } else {
            break;
        }
    }
    if (dem >= 5) {
        return 1;
    } else {
        return 0;
    }
}

// Check theo chiều Dọc
function Doc(i, j) {
    var dem = 1;
    for (var t = 1; t < 5; t++) { // Check phía trên
        if ((i - t) >= 0) { // Giới hạn
            if (arr[i - t][(j)] == arr[i][j]) {
                dem++;
            } else {
                break;
            }
        } else {
            break;
        }
    }
    for (var t = 1; t < 5; t++) { // Check phía dưới
        if (i + t < n_row) { // Giới hạn
            if (arr[i + t][(j)] == arr[i][j]) {
                dem++;
            } else {
                break;
            }
        } else {
            break;
        }
    }
    if (dem >= 5) {
        return 1;
    } else {
        return 0;
    }
}
// Check theo chiều Chéo lên
function cheoLen(i, j) {
    var dem = 1;
    for (var t = 1; t < 5; t++) {
        if ((i - t) >= 0 && (j + t) < n_row) { // Giới hạn
            if (arr[i - t][(j + t)] == arr[i][j]) {
                dem++;
            } else {
                break;
            }
        } else {
            break;
        }
    }
    for (var t = 1; t < 5; t++) { // Check 
        if ((i + t) < n_row && (j - t) >= 0) { // Giới hạn
            if (arr[i + t][(j - t)] == arr[i][j]) {
                dem++;
            } else {
                break;
            }
        } else {
            break;
        }
    }
    if (dem >= 5) {
        return 1;
    } else {
        return 0;
    }
}
// Check theo chiều Chéo xuống
function cheoXuong(i, j) {
    var dem = 1;
    for (var t = 1; t < 5; t++) {
        if ((i + t) < n_column && (j + t) < n_column) { // Giới hạn
            if (arr[i + t][(j + t)] == arr[i][j]) {
                dem++;
            } else {
                break;
            }
        } else {
            break;
        }
    }
    for (var t = 1; t < 5; t++) { // Check 
        if ((i - t) >= 0 && (j - t) >= 0) { // Giới hạn
            if (arr[i - t][(j - t)] == arr[i][j]) {
                dem++;
            } else {
                break;
            }
        } else {
            break;
        }
    }
    if (dem >= 5) {
        return 1;
    } else {
        return 0;
    }
}

// Check
function check() {
    array();
    var check = false;
    for (var i = 0; i < n_column; i++) {
        for (var j = 0; j < n_row; j++) {
            var temp = arr[i][j];
            if (temp == "X" || temp == "O") {
                if (Ngang(i, j) == 1 || Doc(i, j) == 1 || cheoLen(i, j) == 1 || cheoXuong(i, j) == 1) {
                    if (temp == "X") {
                        alert("X WIN");
                        check = true;
                    } else {
                        alert("O WIN!");
                        check = true;
                    }
                }
            } else {
                continue;
            }
            if (check)
                break;
                
        }
        if (check)
            break;
    }
}