program Bai2;
uses crt;
var N: byte;
    A: array[1..98] of byte;
    k, tong, i: integer;

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
    for i := 1 to N do 
        begin
            A[i] := random(201) - random(201);
                while (abs(A[i]) > 200) do
                    begin
                        A[i] := random(201) - random(201);
                    end;
        end;
    write('Nhap so nguyen k: ');
    readln(k);
    tong := 0;
    write('Day cac so chia het cho ', k, ' la: ');
    for i := 1 to N do 
        begin
            if (A[i] mod k = 0) then 
                begin
                    write(A[i], ' ');
                    tong := tong + A[i];
                end; 
        end;
    writeln();
    write('Tong cac so chia het cho ', k, ' la: ', tong);
    readkey;
END.
