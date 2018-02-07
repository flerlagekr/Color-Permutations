/*
Create all color options for five shapes and 8 colors.
If you have a different number of shapes, then you'd need that many different loops.
If you have a different number of colors, then you'd need to simply change the value of @Colors.
*/

TRUNCATE TABLE tblColorOptions

Declare @Colors int, @Option int, @i1 int, @i2 int, @i3 int, @i4 int, @i5 int, @sh1 int, @sh2 int, @sh3 int, @sh4 int, @sh5 int
Declare @ColorCombo nvarchar(50)

Set @Colors = 8
Set @Option = 1

--Process Shape 1
Set @i1 = 1
WHILE @i1 <= @Colors
BEGIN
	--Process Shape 2
	Set @i2 = 1
	WHILE @i2 <= @Colors
	BEGIN
		--Process Shape 3
		Set @i3 = 1
		WHILE @i3 <= @Colors
		BEGIN
			--Process Shape 4
			Set @i4 = 1
			WHILE @i4 <= @Colors
			BEGIN
				--Process Shape 5
				Set @i5 = 1
				WHILE @i5 <= @Colors
				BEGIN
					Set @ColorCombo = CAST(@i1 as nvarchar(1)) + '|' + CAST(@i2 as nvarchar(1)) + '|' + CAST(@i3 as nvarchar(1)) + '|' + CAST(@i4 as nvarchar(1)) + '|' + CAST(@i5 as nvarchar(1))
					INSERT INTO tblColorOptions (OptionID, ShapeID, ColorID, Shape1, Shape2, Shape3, Shape4, Shape5, ColorCombo) Values (@Option, 1, @i1, @i1, @i2, @i3, @i4, @i5, @ColorCombo)
					INSERT INTO tblColorOptions (OptionID, ShapeID, ColorID, Shape1, Shape2, Shape3, Shape4, Shape5, ColorCombo) Values (@Option, 2, @i2, @i1, @i2, @i3, @i4, @i5, @ColorCombo)
					INSERT INTO tblColorOptions (OptionID, ShapeID, ColorID, Shape1, Shape2, Shape3, Shape4, Shape5, ColorCombo) Values (@Option, 3, @i3, @i1, @i2, @i3, @i4, @i5, @ColorCombo)
					INSERT INTO tblColorOptions (OptionID, ShapeID, ColorID, Shape1, Shape2, Shape3, Shape4, Shape5, ColorCombo) Values (@Option, 4, @i4, @i1, @i2, @i3, @i4, @i5, @ColorCombo)
					INSERT INTO tblColorOptions (OptionID, ShapeID, ColorID, Shape1, Shape2, Shape3, Shape4, Shape5, ColorCombo) Values (@Option, 5, @i5, @i1, @i2, @i3, @i4, @i5, @ColorCombo)
					Set @Option = @Option + 1
					SET @i5 = @i5 + 1
				END

				SET @i4 = @i4 + 1
			END

			SET @i3 = @i3 + 1
		END

		SET @i2 = @i2 + 1
	END

	SET @i1 = @i1 + 1
END
