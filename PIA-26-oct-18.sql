USE [Farmacia2]
-- Katya Mariel Mendoza Acosta 1730872 --  

GO
/****** Object:  Table [dbo].[Farmacia_Cliente]    Script Date: 26/10/2018 06:10:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON  
GO
CREATE TABLE [dbo].[Farmacia_Cliente](
	[Id_Cliente] [int] NOT NULL,
	[Nombre_Cliente] [varchar](20) NOT NULL,
	[Apellido_Cliente] [varchar](30) NOT NULL,
	[Direccion_Cliente] [varchar](50) NOT NULL,
	[Telefono_Cliente] [int] NOT NULL,
 CONSTRAINT [PK_Farmacia_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Farmacia_Sucursal]    Script Date: 26/10/2018 06:10:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Farmacia_Sucursal](
	[Id_Sucursal] [int] NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[Telefono] [int] NOT NULL,
 CONSTRAINT [PK_Farmacia_Sucursal] PRIMARY KEY CLUSTERED 
(
	[Id_Sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Farmacia_Trabajador]    Script Date: 26/10/2018 06:10:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Farmacia_Trabajador](
	[Id_FK_Suc] [int] NOT NULL,
	[Id_Trabajador] [int] NOT NULL,
	[Nombre_Trabajador] [varchar](50) NOT NULL,
	[Apellido_Trabajador] [varchar](50) NOT NULL,
	[Telefono_Trabajador] [int] NOT NULL,
	[Id_FK_TipoTrabajador] [int] NOT NULL,
 CONSTRAINT [PK_Farmacia_Trabajador] PRIMARY KEY CLUSTERED 
(
	[Id_Trabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Historial]    Script Date: 26/10/2018 06:10:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historial](
	[Id_Historial] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_Cambio] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Historial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedido_Cliente]    Script Date: 26/10/2018 06:10:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido_Cliente](
	[Id_FK_Cliente] [int] NOT NULL,
	[Id_Pedido] [int] NOT NULL,
	[Id_FK_Trabajador] [int] NOT NULL,
	[Precio] [float] NOT NULL,
	[Fecha_Expedicion] [date] NOT NULL,
	[Id_FK_Pago] [int] NOT NULL,
 CONSTRAINT [PK_Pedido_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id_Pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 26/10/2018 06:10:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Id_Producto] [int] NOT NULL,
	[Nombre_Producto] [varchar](50) NOT NULL,
	[Stock_Producto] [int] NOT NULL,
	[Fecha_Vencimiento] [date] NOT NULL,
	[Descripcion_Producto] [varchar](50) NOT NULL,
	[Precio_Producto] [float] NOT NULL,
	[Id_FK_Proveedor] [int] NOT NULL,
	[Id_FK_Tipo_Producto] [int] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Id_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 26/10/2018 06:10:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[Id_Proveedor] [int] NOT NULL,
	[Nombre_Proveedor] [varchar](50) NOT NULL,
	[Apellido_Proveedor] [varchar](50) NOT NULL,
	[Telefono_Proveedor] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[Id_Proveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Pago]    Script Date: 26/10/2018 06:10:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Pago](
	[Id_Pago] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tipo_Pago] PRIMARY KEY CLUSTERED 
(
	[Id_Pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Producto]    Script Date: 26/10/2018 06:10:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Producto](
	[Id_Tipo_Producto] [int] NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Tipo_Producto] PRIMARY KEY CLUSTERED 
(
	[Id_Tipo_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Trabajo]    Script Date: 26/10/2018 06:10:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Trabajo](
	[Id_TipoTrabajo] [int] NOT NULL,
	[Descripcion_TipoTrabajo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tipo_Trabajo] PRIMARY KEY CLUSTERED 
(
	[Id_TipoTrabajo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Clientes_Vista]    Script Date: 26/10/2018 06:10:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Clientes_Vista] AS
SELECT Apellido_Cliente
FROM Farmacia_Cliente 
WHERE Nombre_Cliente = 'Mendoza';
GO
/****** Object:  View [dbo].[Nombres_Clientes]    Script Date: 26/10/2018 06:10:53 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Nombres_Clientes] AS
SELECT Nombre_Cliente
FROM Farmacia_Cliente 
WHERE Nombre_Cliente = 'Katya';
GO
INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (1, N'Katya', N'Mendoza', N'Granado 1296', 123456)

INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (2, N'Paola', N'Barajas', N'San Nicolas De G', 54321)

INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (3, N'Daniela', N'Mendoza', N'Nuevo León Apodaca', 123456)

INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (4, N'Dieguito', N'Mendoza', N'Granado 1296', 249503)

INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (5, N'Dieguito', N'Maradona', N'Nuevo León Apodaca', 204947)

INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (6, N'Lele', N'Sánchez', N'San Nicolás de los Garza', 304857)

INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (7, N'Francia', N'Italia', N'Escobedo Nuevo León', 495847)

INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (8, N'Islandia', N'EUA', N'Escobedo Nuevo León', 349372)

INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (9, N'Romano', N'Tomato', N'Italia del Sur', 976382)

INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (10, N'Karla', N'Dominguez', N'San Luis Potosí', 394837)

INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (12, N'Karla', N'Dominguez', N'San Luis Potosí', 394837)

INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (13, N'Rafael', N'Zurita', N'San Luis Potosí', 394837)

INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (14, N'Armando', N'Palomo', N'San Luis Potosí', 394837)

INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (15, N'Erensto', N'Aquiles', N'San Luis Potosí', 394837)

INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (16, N'Alfredo', N'Albea', N'San Luis Potosí', 394837)

INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (17, N'Miguel', N'Amaya', N'San Luis Potosí', 394837)

INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (18, N'Veronica', N'Alvarez', N'San Luis Potosí', 394837)

INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (19, N'Oscar', N'Alonso', N'San Luis Potosí', 394837)

INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (20, N'Arturo', N'Alemán', N'San Luis Potosí', 394837)

INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (21, N'Enrique', N'Pascual', N'San Luis Potosí', 394837)

INSERT [dbo].[Farmacia_Cliente] ([Id_Cliente], [Nombre_Cliente], [Apellido_Cliente], [Direccion_Cliente], [Telefono_Cliente]) VALUES (22, N'Victor', N'Guerrero', N'San Luis Potosí', 394837)

INSERT [dbo].[Farmacia_Sucursal] ([Id_Sucursal], [Direccion], [Telefono]) VALUES (1, N'San Nicolas de los G', 54321)

INSERT [dbo].[Farmacia_Sucursal] ([Id_Sucursal], [Direccion], [Telefono]) VALUES (2, N'Escobedo Apodaca', 3948)

INSERT [dbo].[Farmacia_Sucursal] ([Id_Sucursal], [Direccion], [Telefono]) VALUES (3, N'Av. Fco.I.Madero', 662215250)

INSERT [dbo].[Farmacia_Sucursal] ([Id_Sucursal], [Direccion], [Telefono]) VALUES (4, N'Calzada Acoxpa No.240', 83029999)

INSERT [dbo].[Farmacia_Sucursal] ([Id_Sucursal], [Direccion], [Telefono]) VALUES (5, N'Av.Rio Mayo #301', 449975965)

INSERT [dbo].[Farmacia_Sucursal] ([Id_Sucursal], [Direccion], [Telefono]) VALUES (6, N'Suc.Ciudad Guzmán', 662218256)

INSERT [dbo].[Farmacia_Sucursal] ([Id_Sucursal], [Direccion], [Telefono]) VALUES (7, N'Suc.Cerralvo', 57860010)

INSERT [dbo].[Farmacia_Sucursal] ([Id_Sucursal], [Direccion], [Telefono]) VALUES (8, N'Suc.Cuauhtemoc', 62636377)

INSERT [dbo].[Farmacia_Trabajador] ([Id_FK_Suc], [Id_Trabajador], [Nombre_Trabajador], [Apellido_Trabajador], [Telefono_Trabajador], [Id_FK_TipoTrabajador]) VALUES (1, 1, N'Raton', N'Pérez', 78900, 1)

INSERT [dbo].[Farmacia_Trabajador] ([Id_FK_Suc], [Id_Trabajador], [Nombre_Trabajador], [Apellido_Trabajador], [Telefono_Trabajador], [Id_FK_TipoTrabajador]) VALUES (1, 2, N'Nikon', N'Dimos', 235799, 1)

INSERT [dbo].[Farmacia_Trabajador] ([Id_FK_Suc], [Id_Trabajador], [Nombre_Trabajador], [Apellido_Trabajador], [Telefono_Trabajador], [Id_FK_TipoTrabajador]) VALUES (1, 3, N'Helen', N'Jaspe', 45669, 4)

INSERT [dbo].[Farmacia_Trabajador] ([Id_FK_Suc], [Id_Trabajador], [Nombre_Trabajador], [Apellido_Trabajador], [Telefono_Trabajador], [Id_FK_TipoTrabajador]) VALUES (5, 4, N'Sandra', N'Gilant', 29485, 5)

INSERT [dbo].[Farmacia_Trabajador] ([Id_FK_Suc], [Id_Trabajador], [Nombre_Trabajador], [Apellido_Trabajador], [Telefono_Trabajador], [Id_FK_TipoTrabajador]) VALUES (2, 5, N'Samantha', N'Leodore', 493759, 3)

INSERT [dbo].[Farmacia_Trabajador] ([Id_FK_Suc], [Id_Trabajador], [Nombre_Trabajador], [Apellido_Trabajador], [Telefono_Trabajador], [Id_FK_TipoTrabajador]) VALUES (3, 6, N'Fiant', N'Aubermar', 38495, 8)

INSERT [dbo].[Farmacia_Trabajador] ([Id_FK_Suc], [Id_Trabajador], [Nombre_Trabajador], [Apellido_Trabajador], [Telefono_Trabajador], [Id_FK_TipoTrabajador]) VALUES (8, 7, N'Paurrot', N'Sanina', 59383, 2)

INSERT [dbo].[Farmacia_Trabajador] ([Id_FK_Suc], [Id_Trabajador], [Nombre_Trabajador], [Apellido_Trabajador], [Telefono_Trabajador], [Id_FK_TipoTrabajador]) VALUES (4, 8, N'Paiva', N'Kaina', 39485, 6)

INSERT [dbo].[Pedido_Cliente] ([Id_FK_Cliente], [Id_Pedido], [Id_FK_Trabajador], [Precio], [Fecha_Expedicion], [Id_FK_Pago]) VALUES (2, 1, 3, 40.23, CAST(N'2018-10-16' AS Date), 1)

INSERT [dbo].[Pedido_Cliente] ([Id_FK_Cliente], [Id_Pedido], [Id_FK_Trabajador], [Precio], [Fecha_Expedicion], [Id_FK_Pago]) VALUES (2, 2, 5, 20, CAST(N'2018-10-23' AS Date), 3)

INSERT [dbo].[Pedido_Cliente] ([Id_FK_Cliente], [Id_Pedido], [Id_FK_Trabajador], [Precio], [Fecha_Expedicion], [Id_FK_Pago]) VALUES (5, 4, 6, 60.7, CAST(N'2018-10-17' AS Date), 5)

INSERT [dbo].[Pedido_Cliente] ([Id_FK_Cliente], [Id_Pedido], [Id_FK_Trabajador], [Precio], [Fecha_Expedicion], [Id_FK_Pago]) VALUES (8, 5, 6, 10.8, CAST(N'2018-10-28' AS Date), 5)

INSERT [dbo].[Producto] ([Id_Producto], [Nombre_Producto], [Stock_Producto], [Fecha_Vencimiento], [Descripcion_Producto], [Precio_Producto], [Id_FK_Proveedor], [Id_FK_Tipo_Producto]) VALUES (111, N'Abefen R.', 100, CAST(N'2022-10-15' AS Date), N'1 G1 PVO LIOF CORANGENICOL', 20.45, 330, 220)

INSERT [dbo].[Producto] ([Id_Producto], [Nombre_Producto], [Stock_Producto], [Fecha_Vencimiento], [Descripcion_Producto], [Precio_Producto], [Id_FK_Proveedor], [Id_FK_Tipo_Producto]) VALUES (112, N'Abefen R.', 200, CAST(N'2022-10-15' AS Date), N'1 G1 PVO LIOF CORANGENICOL', 23.45, 332, 220)

INSERT [dbo].[Proveedor] ([Id_Proveedor], [Nombre_Proveedor], [Apellido_Proveedor], [Telefono_Proveedor]) VALUES (330, N'Medix Sa De Cv', N'Comercializadora', N'5500182')

INSERT [dbo].[Proveedor] ([Id_Proveedor], [Nombre_Proveedor], [Apellido_Proveedor], [Telefono_Proveedor]) VALUES (331, N'Benavides', N'Autopartes', N'5500182')

INSERT [dbo].[Proveedor] ([Id_Proveedor], [Nombre_Proveedor], [Apellido_Proveedor], [Telefono_Proveedor]) VALUES (332, N'Farmacia DEMSA', N'Suc.Hidalgo', N'5500182')

INSERT [dbo].[Proveedor] ([Id_Proveedor], [Nombre_Proveedor], [Apellido_Proveedor], [Telefono_Proveedor]) VALUES (333, N'Productos Médicos', N'GeoMed', N'5500182')

INSERT [dbo].[Proveedor] ([Id_Proveedor], [Nombre_Proveedor], [Apellido_Proveedor], [Telefono_Proveedor]) VALUES (334, N'El Fenix del Centro', N'Farmacias ', N'5500182')

INSERT [dbo].[Proveedor] ([Id_Proveedor], [Nombre_Proveedor], [Apellido_Proveedor], [Telefono_Proveedor]) VALUES (335, N'Morenita Mia', N'Farmacias Guadalaj', N'5500182')

INSERT [dbo].[Proveedor] ([Id_Proveedor], [Nombre_Proveedor], [Apellido_Proveedor], [Telefono_Proveedor]) VALUES (336, N'Juan Jose', N'Martinez Davalos', N'5500182')
INSERT [dbo].[Tipo_Pago] ([Id_Pago], [Descripcion]) VALUES (1, N'Clorox')
INSERT [dbo].[Tipo_Pago] ([Id_Pago], [Descripcion]) VALUES (2, N'Trasferencia Bancaria')
INSERT [dbo].[Tipo_Pago] ([Id_Pago], [Descripcion]) VALUES (3, N'Cash')
INSERT [dbo].[Tipo_Pago] ([Id_Pago], [Descripcion]) VALUES (4, N'Ingre. de din. en ef. en la cuenta de un 3ro')
INSERT [dbo].[Tipo_Pago] ([Id_Pago], [Descripcion]) VALUES (5, N'Envio de dinero en efectivo a un tercero')
INSERT [dbo].[Tipo_Pago] ([Id_Pago], [Descripcion]) VALUES (6, N'Direct Debit')

INSERT [dbo].[Tipo_Producto] ([Id_Tipo_Producto], [Descripcion]) VALUES (220, N'Antibiotico intra hospitalario')

INSERT [dbo].[Tipo_Trabajo] ([Id_TipoTrabajo], [Descripcion_TipoTrabajo]) VALUES (1, N'Cajero administrador de la caja')
INSERT [dbo].[Tipo_Trabajo] ([Id_TipoTrabajo], [Descripcion_TipoTrabajo]) VALUES (2, N'Auxiliar de Farmacia')
INSERT [dbo].[Tipo_Trabajo] ([Id_TipoTrabajo], [Descripcion_TipoTrabajo]) VALUES (3, N'Médico General')
INSERT [dbo].[Tipo_Trabajo] ([Id_TipoTrabajo], [Descripcion_TipoTrabajo]) VALUES (4, N'Auxiliar de Recursos Humanos')
INSERT [dbo].[Tipo_Trabajo] ([Id_TipoTrabajo], [Descripcion_TipoTrabajo]) VALUES (5, N'Demovedores de Farmacia')
INSERT [dbo].[Tipo_Trabajo] ([Id_TipoTrabajo], [Descripcion_TipoTrabajo]) VALUES (6, N'Auxiliar de Farmacia')
INSERT [dbo].[Tipo_Trabajo] ([Id_TipoTrabajo], [Descripcion_TipoTrabajo]) VALUES (7, N'Jefe de Farmacia')
INSERT [dbo].[Tipo_Trabajo] ([Id_TipoTrabajo], [Descripcion_TipoTrabajo]) VALUES (8, N'Surtidor')
ALTER TABLE [dbo].[Farmacia_Trabajador]  WITH CHECK ADD FOREIGN KEY([Id_FK_Suc])
REFERENCES [dbo].[Farmacia_Sucursal] ([Id_Sucursal])
GO
ALTER TABLE [dbo].[Farmacia_Trabajador]  WITH CHECK ADD FOREIGN KEY([Id_FK_TipoTrabajador])
REFERENCES [dbo].[Tipo_Trabajo] ([Id_TipoTrabajo])
GO
ALTER TABLE [dbo].[Farmacia_Trabajador]  WITH CHECK ADD  CONSTRAINT [FK_Farmacia_Trabajador_Farmacia_Trabajador] FOREIGN KEY([Id_Trabajador])
REFERENCES [dbo].[Farmacia_Trabajador] ([Id_Trabajador])
GO
ALTER TABLE [dbo].[Farmacia_Trabajador] CHECK CONSTRAINT [FK_Farmacia_Trabajador_Farmacia_Trabajador]
GO
ALTER TABLE [dbo].[Pedido_Cliente]  WITH CHECK ADD FOREIGN KEY([Id_FK_Cliente])
REFERENCES [dbo].[Farmacia_Cliente] ([Id_Cliente])
GO
ALTER TABLE [dbo].[Pedido_Cliente]  WITH CHECK ADD FOREIGN KEY([Id_FK_Trabajador])
REFERENCES [dbo].[Farmacia_Trabajador] ([Id_Trabajador])
GO
ALTER TABLE [dbo].[Pedido_Cliente]  WITH CHECK ADD FOREIGN KEY([Id_FK_Pago])
REFERENCES [dbo].[Tipo_Pago] ([Id_Pago])
GO
ALTER TABLE [dbo].[Pedido_Cliente]  WITH CHECK ADD FOREIGN KEY([Id_FK_Pago])
REFERENCES [dbo].[Tipo_Pago] ([Id_Pago])
GO
ALTER TABLE [dbo].[Pedido_Cliente]  WITH CHECK ADD FOREIGN KEY([Id_FK_Pago])
REFERENCES [dbo].[Tipo_Pago] ([Id_Pago])
GO
ALTER TABLE [dbo].[Pedido_Cliente]  WITH CHECK ADD FOREIGN KEY([Id_FK_Pago])
REFERENCES [dbo].[Tipo_Pago] ([Id_Pago])
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD FOREIGN KEY([Id_FK_Proveedor])
REFERENCES [dbo].[Proveedor] ([Id_Proveedor])
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD FOREIGN KEY([Id_FK_Tipo_Producto])
REFERENCES [dbo].[Tipo_Producto] ([Id_Tipo_Producto])
GO
/****** Object:  StoredProcedure [dbo].[BuscarCliente]    Script Date: 26/10/2018 06:10:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarCliente] @Busqueda VARCHAR(100)
AS
	SELECT 
		*  
	FROM 
		Clientes_Vista
	WHERE
		Clientes_Vista.Apellido_Cliente LIKE '%'+@Busqueda+'%'
;
GO
/****** Object:  Trigger [dbo].[Historial_camb2]    Script Date: 26/10/2018 06:10:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create trigger [dbo].[Historial_camb2]
  on [dbo].[Pedido_Cliente]
  instead of insert
  as
    insert into Historial (Fecha_Cambio) values (getdate());
GO
ALTER TABLE [dbo].[Pedido_Cliente] ENABLE TRIGGER [Historial_camb2]
GO


