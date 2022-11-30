program Bai5;
uses crt;
var A: array[1..30] of integer;
    N, i, tong, dem: integer;
    trungBinhCong: real;

BEGIN
    clrscr;
    write('Nhap so nguyen bat ki: ');
    readln(N);
    while (N > 30) or (N <= 0) do
        begin
            clrscr;
            writeln('Nhap so nguyen duong nho hon hoac bang 30 va lon hon 0');
            write('Nhap lai so nguyen: ');
            readln(N);
        end;
    tong := 0;
    dem := 0;
    randomize;
    for i := 1 to N do
        begin
            A[i] := random(N + 1); 
            tong := tong + A[i];
            dem := dem + 1;
        end;
    trungBinhCong := tong / dem;
    writeln('Tong cac phan tu trong mang la: ', tong);
    write('Trung binh cong cac phan tu trong mang la: ', trungBinhCong:6:2);
    readkey;
END.
