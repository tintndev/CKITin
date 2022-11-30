program Bai3;
uses crt;
var A: array[1..98] of byte;
    N: byte;
    i, tongSoChan, soCacSoChan: integer;
    trungBinhCong: real;

BEGIN
    clrscr;
    write('Nhap so nguyen N: ');
    readln(N);
    while (N <= 1) or (N >= 100) do
        begin
            clrscr;
            writeln('Vui long nhap lai so nguyen duong N voi 1 < N < 100');
            write('Nhap lai so nguyen N: ');
            readln(N);
        end;
    randomize;
    tongSoChan := 0;
    soCacSoChan := 0;
    write('Mang vua tao la: ');
    for i := 1 to N do 
        begin
            A[i] := random(151) - random(151);
            while (abs(A[i]) > 150) do
                begin
                    A[i] := random(151) - random(151);
                end;
            write(A[i], ' ');
        end;
    writeln();
    write('Day cac so chan trong mang la: ');
    for i := 1 to N do 
        begin
            if (A[i] mod 2 = 0) then
                begin
                    write(A[i], ' ');
                    tongSoChan := tongSoChan + A[i];
                    soCacSoChan := soCacSoChan + 1;
                end;
        end;
    writeln();
    if (soCacSoChan = 0) then 
        begin
            write('Khong co so chan nao!');
        end
    else
        begin
            trungBinhCong := tongSoChan / soCacSoChan;
            write('Trung binh cong cac so chan la: ', trungBinhCong:6:2);
        end;
    readkey;
END.
