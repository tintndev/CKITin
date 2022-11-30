program Bai13;
uses crt;
var N: byte;
    A: array[1..96] of real;
    i, j: integer;
    z: real;

BEGIN
    clrscr;
    write('Nhap so nguyen bat ki: ');
    readln(N);
    while (N <= 3) or (N >= 100) do
        begin
            clrscr;
            writeln('Vui long nhap so nguyen trong doan tu 1 den 100');
            write('Nhap lai so nguyen: ');
            readln(N); 
        end;
    for i := 1 to N do
        begin
            write('Nhap gia tri thu ', i, ' cho mang: ');
            readln(A[i]);
        end;
    for j := N downto 2 do
        begin
            for i := 1 to j - 1 do
                begin
                    if (A[i] > A[i + 1]) then 
                        begin
                            z := A[i];
                            A[i] := A[i + 1];
                            A[i + 1] := z;
                        end;
                end;
        end;
    write('Day so da duoc sap xep la: ');
    for i := 1 to N do 
        begin
            write(A[i]:6:2, ' ');
        end;
    readkey;
END.
