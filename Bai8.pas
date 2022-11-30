program Bai8;
uses crt;
var N, soPhanTu: byte;
    A: array[1..100] of integer;
    i, tongPhanTu: integer;
    trungBinhCong: real;

BEGIN
    clrscr;
    write('Nhap so nguyen bat ki: ');
    readln(N);
    while (N < 1) or (N > 100) do
        begin
            clrscr;
            writeln('Vui long nhap so nguyen trong doan tu 1 den 100');
            write('Nhap lai so nguyen: ');
            readln(N); 
        end;
    randomize;
    for i := 1 to N do
        begin
            A[i] := random(N + 1) - random(N + 1);
        end;
    soPhanTu := 0;
    tongPhanTu := 0;
    for i := 1 to N do
        begin
            if (A[i] mod 3 = 0) then 
                begin
                    soPhanTu := soPhanTu + 1;
                    tongPhanTu := tongPhanTu + A[i];
                end;
        end;
    if (soPhanTu = 0) then
        begin
            write('Khong co phan tu nao chia het cho 3');
        end
    else
        begin
            trungBinhCong := tongPhanTu / soPhanTu;
            writeln('Co ', soPhanTu, ' so chia het cho 3');
            write('Trung binh cong cac so chia het cho 3 la: ', trungBinhCong:6:2);
        end;
    readkey;
END.
