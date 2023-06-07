CREATE PROCEDURE InsertPakalpojumiInformation
    @Donation_type1 NVARCHAR(50),
    @Username1 NVARCHAR(50),
    @vards NVARCHAR(50),
    @epasts NVARCHAR(50),
    @tel NVARCHAR(50)
AS
BEGIN
    DECLARE @IdDt INT
    DECLARE @IdTransactionDate INT
    DECLARE @IdPerson INT

    INSERT INTO Pakalpojumis (DonationType, Username)
    VALUES (@Donation_type1, @Username1)

    SELECT @IdDt = MAX(id)
    FROM Pakalpojumis

    INSERT INTO Datums (PaymentDate, PaymentType)
    VALUES (GETDATE(), 'paypal')

    SELECT @IdTransactionDate = MAX(id)
    FROM Datums

    INSERT INTO PersonInformations (Name, Email, Phone)
    VALUES (@vards, @epasts, @tel)

    SELECT @IdPerson = MAX(id)
    FROM PersonInformations

    INSERT INTO KlientaInformacijas (IdTransactionDate, IdDt, IdPerson, Payment)
    VALUES (@IdTransactionDate, @IdDt, @IdPerson, 'paypal')
END