program Bai6;
uses crt;
var N: byte;
    A: array[1..30] of integer;
    i, X: integer;

BEGIN
    clrscr;
    write('Nhap so nguyen bat ki: ');
    readln(N);
    while (N <= 0) or (N > 30) do
        begin
            clrscr;
            writeln('Vui long nhap so nguyen duong nho hon hoac bang 30');
            write('Nhap lai so nguyen: ');
            readln(N); 
        end;
    write('Nhap so nguyen tong: ');
    readln(X);
    randomize;
    for i := 1 to N do
        begin
            A[i] := random(N + 1) - random(N + 1);
        end;
    for i := 1 to N do
        begin
            if (A[i] + A[i + 1] = X) then
                begin
                    write('Chi so cua hai so la: ', i, ' va ', i + 1);
                end
            else
                begin
                    write('KHONG CO');
                    break;
                end;
        end;
    readkey;
END.
