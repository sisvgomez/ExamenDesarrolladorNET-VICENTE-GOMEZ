USE [dbTiendaOnLine]
GO
/****** Object:  Table [dbo].[catCantidad]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catCantidad](
	[idCantidad] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[costo] [decimal](6, 2) NULL,
	[idSubCategoria] [int] NULL,
	[idTipo] [int] NULL,
	[numCantidad] [int] NULL,
 CONSTRAINT [PK_catCantidad] PRIMARY KEY CLUSTERED 
(
	[idCantidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catCantidadRango]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catCantidadRango](
	[idCantidadRango] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[valorInicial] [int] NULL,
	[valorFinal] [int] NULL,
	[costo] [decimal](6, 2) NULL,
	[idSubCategoria] [int] NULL,
	[idTipo] [int] NULL,
 CONSTRAINT [PK_catCantidadRango] PRIMARY KEY CLUSTERED 
(
	[idCantidadRango] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatCategorias]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatCategorias](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NomCategoria] [varchar](50) NULL,
	[Descripcion] [text] NULL,
	[IdEmpresa] [int] NULL,
 CONSTRAINT [PK_CatCategorias] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatEmpresa]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatEmpresa](
	[IdEmpresa] [int] IDENTITY(1,1) NOT NULL,
	[NombreEmpresa] [varchar](30) NULL,
	[FechaAlta] [datetime] NULL,
	[IdGiroEmpresa] [nchar](10) NULL,
	[Responsable] [nchar](10) NULL,
	[DirEmpresa] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL,
	[Movil] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[imagen] [varchar](50) NULL,
	[movil2] [varchar](50) NULL,
	[imagen2] [varchar](50) NULL,
	[imagen3] [varchar](50) NULL,
 CONSTRAINT [PK_CatEmpresa] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatFolio]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatFolio](
	[idFolio] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[costo] [decimal](6, 2) NULL,
	[idSubCategoria] [int] NULL,
 CONSTRAINT [PK_CatFolio] PRIMARY KEY CLUSTERED 
(
	[idFolio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catImpresion]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catImpresion](
	[idImpresion] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](80) NULL,
	[idSubCategoria] [int] NULL,
	[idTamano] [int] NULL,
 CONSTRAINT [PK_catImpresion] PRIMARY KEY CLUSTERED 
(
	[idImpresion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catNoCopias]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catNoCopias](
	[idNoCopias] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[costo] [decimal](6, 2) NULL,
	[idSubCategoria] [int] NULL,
 CONSTRAINT [PK_catNoCopias] PRIMARY KEY CLUSTERED 
(
	[idNoCopias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatStatus]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatStatus](
	[IdStatus] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](20) NULL,
 CONSTRAINT [PK_CatStatus] PRIMARY KEY CLUSTERED 
(
	[IdStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatSubcategorias]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatSubcategorias](
	[idSubCategoria] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NULL,
	[subCategoria] [nvarchar](50) NULL,
	[descripcion] [nvarchar](50) NULL,
	[url] [nvarchar](100) NULL,
	[imagen] [nvarchar](100) NULL,
 CONSTRAINT [PK_CatSubcategorias] PRIMARY KEY CLUSTERED 
(
	[idSubCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catTamano]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catTamano](
	[idTamano] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[idSubCategoria] [int] NOT NULL,
 CONSTRAINT [PK_catTamano] PRIMARY KEY CLUSTERED 
(
	[idTamano] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catTemas]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catTemas](
	[idTema] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[idEmpresa] [int] NULL,
 CONSTRAINT [PK_catTemas] PRIMARY KEY CLUSTERED 
(
	[idTema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catTemaSubCategoria]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catTemaSubCategoria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idsubCategoria] [int] NULL,
	[Descripcion] [varchar](30) NULL,
	[url] [varchar](50) NULL,
	[imagen] [varchar](50) NULL,
	[idEmpresa] [int] NULL,
 CONSTRAINT [PK_catTemaSubCategoria] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catTerminado]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catTerminado](
	[idTerminado] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[costo] [decimal](6, 2) NULL,
	[idSubCategoria] [int] NULL,
 CONSTRAINT [PK_catTerminado] PRIMARY KEY CLUSTERED 
(
	[idTerminado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[catTipo]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[catTipo](
	[idTipo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[idSubCategoria] [int] NULL,
	[IdImpresion] [int] NULL,
 CONSTRAINT [PK_catTipo] PRIMARY KEY CLUSTERED 
(
	[idTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellidos] [varchar](50) NULL,
	[IdEstado] [int] NULL,
	[Calle] [varchar](50) NULL,
	[NoExt] [varchar](20) NULL,
	[NoInt] [varchar](20) NULL,
	[CodigoPostal] [varchar](20) NULL,
	[Colonia] [varchar](50) NULL,
	[EntreCalles] [varchar](50) NULL,
	[Referencias] [varchar](50) NULL,
	[TelefonoMovil] [varchar](30) NULL,
	[TelefonoFijo] [varchar](30) NULL,
	[Email] [varchar](50) NULL,
	[IdUsuario] [int] NULL,
	[IdEmpresa] [int] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistorialProductosEliminados]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistorialProductosEliminados](
	[IdProducto] [int] NULL,
	[NomProducto] [varchar](30) NULL,
	[IdCategoria] [int] NULL,
	[idSubCategoria] [int] NULL,
	[Marca] [varchar](30) NULL,
	[Modelo] [varchar](30) NULL,
	[Descripcion] [varchar](200) NULL,
	[Unidad] [int] NULL,
	[IdProveedor] [int] NULL,
	[Imagen] [varchar](150) NULL,
	[Precio] [decimal](18, 2) NULL,
	[Costo] [decimal](18, 2) NULL,
	[IdEmpresa] [int] NULL,
	[IdTalla] [nchar](10) NULL,
	[ClaveProducto] [varchar](30) NULL,
	[oferta] [bit] NULL,
	[idTema] [int] NULL,
	[idUsuarioModifica] [int] NULL,
	[fechaActualizacion] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InicioPedido]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InicioPedido](
	[IdInicioPedido] [int] IDENTITY(1,1) NOT NULL,
	[ValorInicialPedido] [int] NULL,
	[IdEmpresa] [int] NULL,
 CONSTRAINT [PK_InicioPedido] PRIMARY KEY CLUSTERED 
(
	[IdInicioPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[NomProducto] [varchar](30) NULL,
	[IdCategoria] [int] NULL,
	[idSubCategoria] [int] NULL,
	[Marca] [varchar](30) NULL,
	[Modelo] [varchar](30) NULL,
	[Descripcion] [varchar](200) NULL,
	[Unidad] [int] NULL,
	[IdProveedor] [int] NULL,
	[Imagen] [varchar](150) NULL,
	[Precio] [decimal](18, 2) NULL,
	[Costo] [decimal](18, 2) NULL,
	[IdEmpresa] [int] NULL,
	[IdTalla] [nchar](10) NULL,
	[ClaveProducto] [varchar](30) NULL,
	[oferta] [bit] NULL,
	[idTema] [int] NULL,
	[idUsuarioModifica] [int] NULL,
	[fechaActualizacion] [datetime] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[idRol] [smallint] NOT NULL,
	[descripcionRol] [nvarchar](100) NULL,
	[fechaAlta] [datetime] NOT NULL,
	[activo] [bit] NOT NULL,
	[idUsuarioAlta] [smallint] NULL,
	[fechaModificacion] [datetime] NULL,
	[idUsuarioModifica] [smallint] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](50) NULL,
	[emailUsuario] [varchar](100) NULL,
	[nombreUsuario] [varchar](100) NULL,
	[apPaternoUsuario] [varchar](100) NULL,
	[apMaternoUsuario] [nchar](10) NULL,
	[contrasenaUsuario] [varchar](50) NULL,
	[IdRol] [int] NULL,
	[fechaUltimoIngreso] [datetime] NULL,
	[fechaAlta] [datetime] NULL,
	[fechaModificacion] [datetime] NULL,
	[IdEmpresa] [int] NULL,
	[contrasena] [nvarchar](64) NULL,
	[recuperaContrasena] [nvarchar](64) NULL,
	[activo] [bit] NULL,
	[intentos] [smallint] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentaDetalle]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentaDetalle](
	[IdDetalle] [int] IDENTITY(1,1) NOT NULL,
	[NumPedido] [varchar](50) NULL,
	[IdProducto] [int] NULL,
	[CantidadProducto] [int] NULL,
	[Subtotal] [decimal](18, 2) NULL,
	[IdEmpresa] [int] NULL,
 CONSTRAINT [PK_VentaDetalle] PRIMARY KEY CLUSTERED 
(
	[IdDetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[IdPedido] [int] IDENTITY(1,1) NOT NULL,
	[NumPedido] [varchar](50) NULL,
	[Fecha] [datetime] NULL,
	[IdEmpresa] [int] NULL,
	[IdUsuario] [int] NULL,
	[Total] [decimal](18, 2) NULL,
	[IdStatus] [int] NULL,
	[IdCliente] [int] NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[IdPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[catCantidad] ON 
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (1, N'20', CAST(300.00 AS Decimal(6, 2)), 47, 18, 20)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (2, N'40', CAST(470.00 AS Decimal(6, 2)), 47, 18, 40)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (3, N'80', CAST(810.00 AS Decimal(6, 2)), 47, 18, 80)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (4, N'100', CAST(980.00 AS Decimal(6, 2)), 47, 18, 100)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (5, N'20', CAST(425.00 AS Decimal(6, 2)), 47, 19, 20)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (6, N'40', CAST(595.00 AS Decimal(6, 2)), 47, 19, 40)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (7, N'80', CAST(935.00 AS Decimal(6, 2)), 47, 19, 80)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (8, N'100', CAST(1105.00 AS Decimal(6, 2)), 47, 19, 100)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (9, N'1 Millar', CAST(270.00 AS Decimal(6, 2)), 35, 4, 1)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (10, N'2 Millares', CAST(630.00 AS Decimal(6, 2)), 35, 4, 2)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (11, N'3 Millares', CAST(1070.00 AS Decimal(6, 2)), 35, 4, 3)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (12, N'4 Millares', CAST(1430.00 AS Decimal(6, 2)), 35, 4, 4)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (13, N'5 Millares', CAST(1870.00 AS Decimal(6, 2)), 35, 4, 5)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (14, N'1 Millar', CAST(70.00 AS Decimal(6, 2)), 35, 5, 1)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (15, N'2 Millares', CAST(230.00 AS Decimal(6, 2)), 35, 5, 2)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (16, N'3 Millares', CAST(470.00 AS Decimal(6, 2)), 35, 5, 3)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (17, N'4 Millares', CAST(630.00 AS Decimal(6, 2)), 35, 5, 4)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (18, N'5 Millares', CAST(870.00 AS Decimal(6, 2)), 35, 5, 5)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (19, N'20', CAST(585.00 AS Decimal(6, 2)), 47, 20, 20)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (20, N'40', CAST(755.00 AS Decimal(6, 2)), 47, 20, 40)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (21, N'80', CAST(1095.00 AS Decimal(6, 2)), 47, 20, 80)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (22, N'100', CAST(1265.00 AS Decimal(6, 2)), 47, 20, 100)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (23, N'20', CAST(745.00 AS Decimal(6, 2)), 47, 21, 20)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (24, N'40', CAST(915.00 AS Decimal(6, 2)), 47, 21, 40)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (25, N'80', CAST(1255.00 AS Decimal(6, 2)), 47, 21, 80)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (26, N'100', CAST(1425.00 AS Decimal(6, 2)), 47, 21, 100)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (27, N'20', CAST(330.00 AS Decimal(6, 2)), 47, 22, 20)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (28, N'40', CAST(530.00 AS Decimal(6, 2)), 47, 22, 40)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (29, N'80', CAST(930.00 AS Decimal(6, 2)), 47, 22, 80)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (30, N'100', CAST(1130.00 AS Decimal(6, 2)), 47, 22, 100)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (31, N'20', CAST(455.00 AS Decimal(6, 2)), 47, 23, 20)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (32, N'40', CAST(655.00 AS Decimal(6, 2)), 47, 23, 40)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (33, N'80', CAST(1055.00 AS Decimal(6, 2)), 47, 23, 80)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (34, N'100', CAST(1255.00 AS Decimal(6, 2)), 47, 23, 100)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (35, N'20', CAST(615.00 AS Decimal(6, 2)), 47, 24, 20)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (36, N'40', CAST(815.00 AS Decimal(6, 2)), 47, 24, 40)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (37, N'80', CAST(1215.00 AS Decimal(6, 2)), 47, 24, 80)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (38, N'100', CAST(1415.00 AS Decimal(6, 2)), 47, 24, 100)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (39, N'20', CAST(775.00 AS Decimal(6, 2)), 47, 25, 20)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (40, N'40', CAST(975.00 AS Decimal(6, 2)), 47, 2, 40)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (41, N'80', CAST(1375.00 AS Decimal(6, 2)), 47, 25, 80)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (42, N'100', CAST(1575.00 AS Decimal(6, 2)), 47, 25, 100)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (46, N'50', CAST(750.00 AS Decimal(6, 2)), 10, 35, 50)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (47, N'100', CAST(1000.00 AS Decimal(6, 2)), 10, 35, 100)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (48, N'150', CAST(1400.00 AS Decimal(6, 2)), 10, 35, 150)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (49, N'200', CAST(1700.00 AS Decimal(6, 2)), 10, 35, 200)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (50, N'300', CAST(2500.00 AS Decimal(6, 2)), 10, 35, 300)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (51, N'1 millar
', CAST(470.00 AS Decimal(6, 2)), 35, 40, 1)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (52, N'2 millares
', CAST(830.00 AS Decimal(6, 2)), 35, 40, 2)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (53, N'3 millares
', CAST(1270.00 AS Decimal(6, 2)), 35, 40, 3)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (54, N'4 millares
', CAST(1630.00 AS Decimal(6, 2)), 35, 40, 4)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (55, N'5 millares
', CAST(2070.00 AS Decimal(6, 2)), 35, 40, 5)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (56, N'1 millar
', CAST(565.00 AS Decimal(6, 2)), 35, 41, 1)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (57, N'2 millares
', CAST(925.00 AS Decimal(6, 2)), 35, 41, 2)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (58, N'3 millares
', CAST(1365.00 AS Decimal(6, 2)), 35, 41, 3)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (59, N'4 millares
', CAST(1725.00 AS Decimal(6, 2)), 35, 41, 4)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (60, N'5 millares
', CAST(2165.00 AS Decimal(6, 2)), 35, 41, 5)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (61, N'1 millar
', CAST(680.00 AS Decimal(6, 2)), 35, 42, 1)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (62, N'2 millares
', CAST(1040.00 AS Decimal(6, 2)), 35, 42, 2)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (63, N'3 millares
', CAST(1480.00 AS Decimal(6, 2)), 35, 42, 3)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (64, N'4 millares
', CAST(1840.00 AS Decimal(6, 2)), 35, 42, 4)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (65, N'5 millares
', CAST(2280.00 AS Decimal(6, 2)), 35, 42, 5)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (66, N'1 millar
', CAST(800.00 AS Decimal(6, 2)), 35, 43, 1)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (67, N'2 millares
', CAST(1160.00 AS Decimal(6, 2)), 35, 43, 2)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (68, N'3 millares
', CAST(1600.00 AS Decimal(6, 2)), 35, 43, 3)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (69, N'4 millares
', CAST(1960.00 AS Decimal(6, 2)), 35, 43, 4)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (70, N'5 millares
', CAST(2400.00 AS Decimal(6, 2)), 35, 43, 5)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (71, N'1 millar
', CAST(270.00 AS Decimal(6, 2)), 35, 44, 1)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (72, N'2 millares
', CAST(430.00 AS Decimal(6, 2)), 35, 44, 2)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (73, N'3 millares
', CAST(670.00 AS Decimal(6, 2)), 35, 44, 3)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (74, N'4 millares
', CAST(830.00 AS Decimal(6, 2)), 35, 44, 4)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (75, N'5 millares
', CAST(1070.00 AS Decimal(6, 2)), 35, 44, 5)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (76, N'1 millar
', CAST(365.00 AS Decimal(6, 2)), 35, 45, 1)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (77, N'2 millares
', CAST(525.00 AS Decimal(6, 2)), 35, 45, 2)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (78, N'3 millares
', CAST(765.00 AS Decimal(6, 2)), 35, 45, 3)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (79, N'4 millares
', CAST(925.00 AS Decimal(6, 2)), 35, 45, 4)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (80, N'5 millares
', CAST(1165.00 AS Decimal(6, 2)), 35, 45, 5)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (81, N'1 millar
', CAST(480.00 AS Decimal(6, 2)), 35, 46, 1)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (82, N'2 millares
', CAST(640.00 AS Decimal(6, 2)), 35, 46, 2)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (83, N'3 millares
', CAST(880.00 AS Decimal(6, 2)), 35, 46, 3)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (84, N'4 millares
', CAST(1040.00 AS Decimal(6, 2)), 35, 46, 4)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (85, N'5 millares
', CAST(1280.00 AS Decimal(6, 2)), 35, 46, 5)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (86, N'1 millar
', CAST(530.00 AS Decimal(6, 2)), 35, 47, 1)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (87, N'2 millares
', CAST(690.00 AS Decimal(6, 2)), 35, 47, 2)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (88, N'3 millares
', CAST(930.00 AS Decimal(6, 2)), 35, 47, 3)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (89, N'4 millares
', CAST(1090.00 AS Decimal(6, 2)), 35, 47, 4)
GO
INSERT [dbo].[catCantidad] ([idCantidad], [descripcion], [costo], [idSubCategoria], [idTipo], [numCantidad]) VALUES (90, N'5 millares
', CAST(1330.00 AS Decimal(6, 2)), 35, 47, 5)
GO
SET IDENTITY_INSERT [dbo].[catCantidad] OFF
GO
SET IDENTITY_INSERT [dbo].[catCantidadRango] ON 
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (1, N'1 a 5 (15 pesos)
', 1, 5, CAST(15.00 AS Decimal(6, 2)), 48, 6)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (2, N'6 a 10 (13 pesos)
', 6, 10, CAST(13.00 AS Decimal(6, 2)), 48, 6)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (3, N'11 a 20 (12 pesos)
', 11, 20, CAST(12.00 AS Decimal(6, 2)), 48, 6)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (4, N'21 en adelante (10 pesos)
', 21, 100000, CAST(10.00 AS Decimal(6, 2)), 48, 6)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (5, N'1 a 5 (45 pesos c/u)
', 1, 5, CAST(45.00 AS Decimal(6, 2)), 2, 7)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (6, N'6-10 (40 pesos c/u)
', 6, 10, CAST(40.00 AS Decimal(6, 2)), 2, 7)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (7, N'11-20 (35 pesos c/u)
', 11, 20, CAST(35.00 AS Decimal(6, 2)), 2, 7)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (8, N'21-25 (30 pesos c/u)
', 21, 25, CAST(30.00 AS Decimal(6, 2)), 2, 7)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (9, N'26 en adelante (28 pesos c/u)
', 26, 10000, CAST(28.00 AS Decimal(6, 2)), 2, 7)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (10, N'1 a 5 (65 pesos c/u)
', 1, 5, CAST(65.00 AS Decimal(6, 2)), 2, 8)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (11, N'6-10 (55 pesos c/u)
', 6, 10, CAST(55.00 AS Decimal(6, 2)), 2, 8)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (12, N'11-20 (50 pesos c/u)
', 11, 20, CAST(50.00 AS Decimal(6, 2)), 2, 8)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (13, N'26 en adelante (45 pesos c/u)
', 20, 10000, CAST(45.00 AS Decimal(6, 2)), 2, 8)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (14, N'1 millar (230 pesos c/u)
', 1, 1, CAST(230.00 AS Decimal(6, 2)), 38, 9)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (15, N'2 millares (200 c/u)
', 2, 2, CAST(200.00 AS Decimal(6, 2)), 38, 9)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (16, N'3 millares en adelante (180 c/u)
', 3, 10000, CAST(180.00 AS Decimal(6, 2)), 38, 9)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (17, N'1 millar (290 pesos c/u)
', 1, 1, CAST(290.00 AS Decimal(6, 2)), 38, 10)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (18, N'2 millares (250 c/u)
', 2, 2, CAST(250.00 AS Decimal(6, 2)), 38, 10)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (19, N'3 millares en adelante (210 c/u)
', 3, 10000, CAST(210.00 AS Decimal(6, 2)), 38, 10)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (20, N'1 millar (250 pesos c/u)
', 1, 1, CAST(250.00 AS Decimal(6, 2)), 39, 11)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (21, N'2 millares (220 c/u)
', 2, 2, CAST(220.00 AS Decimal(6, 2)), 39, 11)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (22, N'3 millares en adelante (200 c/u)
', 3, 10000, CAST(200.00 AS Decimal(6, 2)), 39, 11)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (23, N'1 millar (500 pesos c/u)
', 1, 1, CAST(500.00 AS Decimal(6, 2)), 39, 12)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (24, N'2 millares (450 c/u)
', 2, 2, CAST(450.00 AS Decimal(6, 2)), 39, 12)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (25, N'3 millares en adelante (400 c/u)
', 3, 10000, CAST(400.00 AS Decimal(6, 2)), 39, 12)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (29, N'1 millar (400 pesos c/u)
', 1, 1, CAST(400.00 AS Decimal(6, 2)), 39, 14)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (30, N'2 millares (380 c/u)
', 2, 2, CAST(380.00 AS Decimal(6, 2)), 39, 14)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (31, N'3 millares en adelante (350 c/u)
', 3, 10000, CAST(350.00 AS Decimal(6, 2)), 39, 14)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (32, N'1 millar (700 pesos c/u)
', 1, 1, CAST(700.00 AS Decimal(6, 2)), 39, 15)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (33, N'2 millares (680 c/u)
', 2, 2, CAST(680.00 AS Decimal(6, 2)), 39, 15)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (34, N'3 millares en adelante (600 c/u)
', 3, 10000, CAST(600.00 AS Decimal(6, 2)), 39, 15)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (35, N'1 millar (800 pesos c/u)
', 1, 1, CAST(800.00 AS Decimal(6, 2)), 39, 16)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (36, N'2 millares (780 c/u)
', 2, 2, CAST(780.00 AS Decimal(6, 2)), 39, 16)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (37, N'3 millares en adelante (750 c/u)
', 3, 10000, CAST(750.00 AS Decimal(6, 2)), 39, 16)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (38, N'1 millar (1400 pesos c/u)
', 1, 1, CAST(1400.00 AS Decimal(6, 2)), 39, 17)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (39, N'2 millares (1300 c/u)
', 2, 2, CAST(1300.00 AS Decimal(6, 2)), 39, 17)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (40, N'3 millares en adelante (1200 c/u)
', 3, 10000, CAST(1200.00 AS Decimal(6, 2)), 39, 17)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (41, N'1 a 5 (45 pesos c/u)
', 1, 5, CAST(45.00 AS Decimal(6, 2)), 7, 26)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (42, N'6-10 (40 pesos c/u)
', 6, 10, CAST(40.00 AS Decimal(6, 2)), 7, 26)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (43, N'11-20 (35 pesos c/u)
', 11, 20, CAST(35.00 AS Decimal(6, 2)), 7, 26)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (44, N'21-25 (30 pesos c/u)
', 21, 25, CAST(30.00 AS Decimal(6, 2)), 7, 26)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (45, N'26 en adelante (28 pesos c/u)
', 26, 10000, CAST(28.00 AS Decimal(6, 2)), 7, 26)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (54, N'1 millar (1500 pesos c/u)
', 1, 1, CAST(1500.00 AS Decimal(6, 2)), 49, 29)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (55, N'2 millares (1400 c/u)
', 2, 2, CAST(1400.00 AS Decimal(6, 2)), 49, 29)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (56, N'3 millares en adelante (1200 c/u)
', 3, 10000, CAST(1200.00 AS Decimal(6, 2)), 49, 29)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (57, N'1 a 5 (105 pesos c/u)
', 1, 5, CAST(105.00 AS Decimal(6, 2)), 1, 30)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (58, N'6-10 (95 pesos c/u)
', 6, 10, CAST(95.00 AS Decimal(6, 2)), 1, 30)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (59, N'11-20 (90 pesos c/u)
', 11, 20, CAST(90.00 AS Decimal(6, 2)), 1, 30)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (60, N'21 en adelante (85 pesos c/u)
', 21, 10000, CAST(85.00 AS Decimal(6, 2)), 1, 30)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (61, N'1 a 3(180 pesos c/u)
', 1, 3, CAST(180.00 AS Decimal(6, 2)), 16, 36)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (62, N'4 a 10 (150 pesos c/u)
', 4, 10, CAST(150.00 AS Decimal(6, 2)), 16, 36)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (63, N'11 a 20 (140pesos c/u)
', 11, 20, CAST(140.00 AS Decimal(6, 2)), 16, 36)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (64, N'21 en adelante (125 pesos c/u)
', 21, 10000, CAST(125.00 AS Decimal(6, 2)), 16, 36)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (65, N'1 a 3(180 pesos c/u)
', 1, 3, CAST(180.00 AS Decimal(6, 2)), 16, 37)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (66, N'4 a 10 (150 pesos c/u)
', 4, 10, CAST(150.00 AS Decimal(6, 2)), 16, 37)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (67, N'11 a 20 (140pesos c/u)
', 11, 20, CAST(140.00 AS Decimal(6, 2)), 16, 37)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (68, N'21 en adelante (125 pesos c/u)
', 21, 10000, CAST(125.00 AS Decimal(6, 2)), 16, 37)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (69, N'1 a 3(180 pesos c/u)
', 1, 3, CAST(180.00 AS Decimal(6, 2)), 16, 38)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (70, N'4 a 10 (150 pesos c/u)
', 4, 10, CAST(150.00 AS Decimal(6, 2)), 16, 38)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (71, N'11 a 20 (140pesos c/u)
', 11, 20, CAST(140.00 AS Decimal(6, 2)), 16, 38)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (72, N'21 en adelante (125 pesos c/u)
', 21, 10000, CAST(125.00 AS Decimal(6, 2)), 16, 38)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (73, N'1 a 3(180 pesos c/u)
', 1, 3, CAST(180.00 AS Decimal(6, 2)), 16, 39)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (74, N'4 a 10 (150 pesos c/u)
', 4, 10, CAST(150.00 AS Decimal(6, 2)), 16, 39)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (75, N'11 a 20 (140pesos c/u)
', 11, 20, CAST(140.00 AS Decimal(6, 2)), 16, 39)
GO
INSERT [dbo].[catCantidadRango] ([idCantidadRango], [descripcion], [valorInicial], [valorFinal], [costo], [idSubCategoria], [idTipo]) VALUES (76, N'21 en adelante (125 pesos c/u)
', 21, 10000, CAST(125.00 AS Decimal(6, 2)), 16, 39)
GO
SET IDENTITY_INSERT [dbo].[catCantidadRango] OFF
GO
SET IDENTITY_INSERT [dbo].[CatCategorias] ON 
GO
INSERT [dbo].[CatCategorias] ([IdCategoria], [NomCategoria], [Descripcion], [IdEmpresa]) VALUES (1, N'Autos', N'Para Autos', 1)
GO
INSERT [dbo].[CatCategorias] ([IdCategoria], [NomCategoria], [Descripcion], [IdEmpresa]) VALUES (2, N'Casa Interiores', N'Para interiores', 1)
GO
INSERT [dbo].[CatCategorias] ([IdCategoria], [NomCategoria], [Descripcion], [IdEmpresa]) VALUES (3, N'Casa Exeriores', N'Para Exteriores', 1)
GO
INSERT [dbo].[CatCategorias] ([IdCategoria], [NomCategoria], [Descripcion], [IdEmpresa]) VALUES (4, N'Sublimacion', N'Sublimación', 3)
GO
INSERT [dbo].[CatCategorias] ([IdCategoria], [NomCategoria], [Descripcion], [IdEmpresa]) VALUES (5, N'Serigrafia', N'Serigrafia', 3)
GO
INSERT [dbo].[CatCategorias] ([IdCategoria], [NomCategoria], [Descripcion], [IdEmpresa]) VALUES (6, N'Impresion', N'Impresión Digital', 3)
GO
INSERT [dbo].[CatCategorias] ([IdCategoria], [NomCategoria], [Descripcion], [IdEmpresa]) VALUES (7, N'OffSet', N'OffSett', 3)
GO
INSERT [dbo].[CatCategorias] ([IdCategoria], [NomCategoria], [Descripcion], [IdEmpresa]) VALUES (8, N'PERSONAS', N'PERSONAS', 4)
GO
INSERT [dbo].[CatCategorias] ([IdCategoria], [NomCategoria], [Descripcion], [IdEmpresa]) VALUES (9, N'ANIMALES', N'ANIMALES', 4)
GO
INSERT [dbo].[CatCategorias] ([IdCategoria], [NomCategoria], [Descripcion], [IdEmpresa]) VALUES (10, N'ABSTRACTO', N'ABSTRACTO', 4)
GO
SET IDENTITY_INSERT [dbo].[CatCategorias] OFF
GO
SET IDENTITY_INSERT [dbo].[CatEmpresa] ON 
GO
INSERT [dbo].[CatEmpresa] ([IdEmpresa], [NombreEmpresa], [FechaAlta], [IdGiroEmpresa], [Responsable], [DirEmpresa], [Telefono], [Movil], [Email], [imagen], [movil2], [imagen2], [imagen3]) VALUES (1, N'Adhler', CAST(N'2020-05-29T00:00:00.000' AS DateTime), N'1         ', N'Jhonathan ', N'Ixtapaluca', N'4566666', N'434545454', N'sis@hotmail.com', N'logo.png', NULL, N'logo.png', N'logo.png')
GO
INSERT [dbo].[CatEmpresa] ([IdEmpresa], [NombreEmpresa], [FechaAlta], [IdGiroEmpresa], [Responsable], [DirEmpresa], [Telefono], [Movil], [Email], [imagen], [movil2], [imagen2], [imagen3]) VALUES (2, N'EM', CAST(N'2020-06-16T00:00:00.000' AS DateTime), N'2         ', N'Jean      ', N'Centro', N'5555555', N'444444444', N'Em@hotmail.com', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CatEmpresa] ([IdEmpresa], [NombreEmpresa], [FechaAlta], [IdGiroEmpresa], [Responsable], [DirEmpresa], [Telefono], [Movil], [Email], [imagen], [movil2], [imagen2], [imagen3]) VALUES (3, N'CYS', CAST(N'2020-07-01T00:00:00.000' AS DateTime), N'3         ', N'Alejandra ', N'Ecatepec, Emiliano Zapata', N'5570918346', N'5515749577', N'impresiontotal4@gmail.com', N'logo.png', N'5582642033', N'logo2.png', N'logo3.png')
GO
INSERT [dbo].[CatEmpresa] ([IdEmpresa], [NombreEmpresa], [FechaAlta], [IdGiroEmpresa], [Responsable], [DirEmpresa], [Telefono], [Movil], [Email], [imagen], [movil2], [imagen2], [imagen3]) VALUES (4, N'LUCY', CAST(N'2020-07-01T00:00:00.000' AS DateTime), N'4         ', N'Lucy      ', N'Vazquez', N'11111', N'111', N'impresiontotal4@gmail.com', N'logo.png', N'55345354', N'logo2.png', N'logo.png')
GO
SET IDENTITY_INSERT [dbo].[CatEmpresa] OFF
GO
SET IDENTITY_INSERT [dbo].[CatFolio] ON 
GO
INSERT [dbo].[CatFolio] ([idFolio], [descripcion], [costo], [idSubCategoria]) VALUES (1, N'Si', CAST(5.00 AS Decimal(6, 2)), 47)
GO
INSERT [dbo].[CatFolio] ([idFolio], [descripcion], [costo], [idSubCategoria]) VALUES (2, N'No', CAST(0.00 AS Decimal(6, 2)), 47)
GO
INSERT [dbo].[CatFolio] ([idFolio], [descripcion], [costo], [idSubCategoria]) VALUES (3, N'Si', CAST(90.00 AS Decimal(6, 2)), 35)
GO
INSERT [dbo].[CatFolio] ([idFolio], [descripcion], [costo], [idSubCategoria]) VALUES (4, N'No', CAST(0.00 AS Decimal(6, 2)), 35)
GO
SET IDENTITY_INSERT [dbo].[CatFolio] OFF
GO
SET IDENTITY_INSERT [dbo].[catImpresion] ON 
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (1, N'1x0 (B&N/Solo Frente) 
', 47, 11)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (2, N'2x0 (Solo Frente) 
', 47, 11)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (3, N'3x0 (Solo Frente) 
', 47, 11)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (4, N'Selección de  Color (Solo Frente) 
', 47, 11)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (5, N'1x0 (B&N/Solo Frente) 
', 35, 2)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (6, N'2x0 (Solo Frente) 
', 35, 2)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (7, N'3x0 (Solo Frente) 
', 35, 2)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (8, N'Selección de  Color (Solo Frente) 
', 35, 2)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (9, N'4 x 0 (solo Frente)
', 48, 3)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (11, N'Color 4 x 0 ó 4 x 1 (Color Frente y vuelta Negro)
', 38, 6)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (12, N'Color 4 x 4 (Color Frente y vuelta)
', 38, 6)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (13, N'Color 4 x 0 ó 4 x 1 (Color Frente y vuelta Negro)
', 39, 7)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (14, N'Color 4 x 4 (Color Frente y vuelta)
', 39, 7)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (15, N'Color 4 x 0 ó 4 x 1 (Color Frente y vuelta Negro)
', 39, 9)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (16, N'Color 4 x 4 (Color Frente y vuelta)
', 39, 9)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (17, N'Color 4 x 0 ó 4 x 1 (Color Frente y vuelta Negro)
', 39, 10)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (18, N'Color 4 x 4 (Color Frente y vuelta)
', 39, 10)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (25, N'Color Ceramica', 2, 4)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (28, N'Color Magica', 2, 4)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (29, N'Color Conica', 7, 5)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (30, N'Color 4 x 4 (Color Frente y vuelta)', 49, 15)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (31, N'Color (Solo Frente)
', 1, 16)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (32, N'Color (Solo Frente)
', 1, 17)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (33, N'Color (Solo Frente)
', 1, 18)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (34, N'Color (Solo Frente)
', 1, 19)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (35, N'Color (Solo Frente)
', 1, 20)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (36, N'1 Tinta
', 10, 21)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (37, N'1 Tinta (Solo Frente)
', 16, 22)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (38, N'1 Tinta (Solo Frente)
', 16, 23)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (39, N'1 Tinta (Solo Frente)
', 16, 24)
GO
INSERT [dbo].[catImpresion] ([idImpresion], [descripcion], [idSubCategoria], [idTamano]) VALUES (40, N'1 Tinta (Solo Frente)
', 16, 25)
GO
SET IDENTITY_INSERT [dbo].[catImpresion] OFF
GO
SET IDENTITY_INSERT [dbo].[catNoCopias] ON 
GO
INSERT [dbo].[catNoCopias] ([idNoCopias], [descripcion], [costo], [idSubCategoria]) VALUES (1, N'1', CAST(1.00 AS Decimal(6, 2)), 35)
GO
INSERT [dbo].[catNoCopias] ([idNoCopias], [descripcion], [costo], [idSubCategoria]) VALUES (2, N'2', CAST(135.00 AS Decimal(6, 2)), 35)
GO
INSERT [dbo].[catNoCopias] ([idNoCopias], [descripcion], [costo], [idSubCategoria]) VALUES (3, N'3', CAST(270.00 AS Decimal(6, 2)), 35)
GO
SET IDENTITY_INSERT [dbo].[catNoCopias] OFF
GO
SET IDENTITY_INSERT [dbo].[CatStatus] ON 
GO
INSERT [dbo].[CatStatus] ([IdStatus], [Descripcion]) VALUES (1, N'Progreso')
GO
INSERT [dbo].[CatStatus] ([IdStatus], [Descripcion]) VALUES (2, N'Atendido')
GO
SET IDENTITY_INSERT [dbo].[CatStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[CatSubcategorias] ON 
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (1, 4, N'Playeras', N'Playeras', NULL, N'SUB325.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (2, 4, N'Tazas', N'Tazas', NULL, N'SUB225.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (3, 4, N'Platos', NULL, NULL, N'SUB725.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (4, 4, N'Termos', N'Platos', NULL, N'SUB425.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (5, 4, N'Lozetas', NULL, NULL, N'SUB525.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (6, 4, N'Servilletas', NULL, NULL, N'SUB625.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (7, 4, N'Tazas Magicas', NULL, NULL, NULL)
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (8, 5, N'Calendarios', NULL, NULL, N'SER325.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (9, 5, N'Bolsas', NULL, NULL, N'SER625.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (10, 5, N'Vasos', NULL, NULL, N'SER125.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (12, 5, N'Ceniceros', NULL, NULL, N'SER1225.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (13, 5, N'Cilindros', NULL, NULL, N'SER925.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (14, 5, N'Gomas', NULL, NULL, N'SER1325.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (15, 5, N'Portacredenciales', NULL, NULL, N'SER825.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (16, 5, N'Playeras', NULL, NULL, N'SER225.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (17, 5, N'Encendedores', NULL, NULL, N'SER1125.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (18, 5, N'Plumas', NULL, NULL, N'SER525.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (19, 5, N'Lapiz', NULL, NULL, NULL)
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (20, 5, N'Copas', NULL, NULL, N'SER725.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (21, 5, N'Dulceros', NULL, NULL, NULL)
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (22, 5, N'Invitaciones', NULL, NULL, N'SER425.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (23, 6, N'Cuadernos', NULL, NULL, N'IDIG225.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (24, 6, N'Folders', NULL, NULL, N'IDIG725.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (25, 6, N'Sobres', NULL, NULL, N'SER1425.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (26, 6, N'Separadores', NULL, NULL, N'IDIG625.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (27, 6, N'Tabloides', NULL, NULL, N'IDIG125.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (28, 6, N'Hojas de Menú', NULL, NULL, N'IDIG425.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (29, 6, N'Anuarios', NULL, NULL, N'IDIG825.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (30, 6, N'Bitacoras', NULL, NULL, N'IDIG825.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (31, 6, N'Esqueta', NULL, NULL, N'IDIG525.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (32, 4, N'Cubrebocas', NULL, NULL, N'SUB8.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (33, 4, N'Vasos', NULL, NULL, N'SUB825.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (34, 5, N'Pantuflas', NULL, NULL, N'SER1025.PNG')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (35, 7, N'Notas de Remisión', NULL, NULL, N'Off0225.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (36, 7, N'Hojas membretadas', NULL, NULL, N'Off325.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (37, 7, N'Recetas', NULL, NULL, N'Off425.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (38, 7, N'Tarjetas', NULL, NULL, N'Off525.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (39, 7, N'Volantes', NULL, NULL, N'Off925.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (40, 7, N'Catálogos', NULL, NULL, N'Off1225.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (41, 7, N'Cuadernos', NULL, NULL, N'Off1325.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (42, 7, N'Cajas', NULL, NULL, N'Off1425.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (43, 6, N'Diplomas', NULL, NULL, N'IDIG325.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (44, 6, N'Esquela', NULL, NULL, N'IDIG525.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (45, 6, N'Bitacoras', NULL, NULL, N'IDIG825.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (46, 6, N'Lonas', NULL, NULL, N'IDIG925.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (47, 7, N'Block de Notas', NULL, NULL, N'Off13.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (48, 6, N'Etiquetas', NULL, NULL, N'Off13.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (49, 7, N'Triptico', NULL, NULL, N'Off13.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (50, 8, N'FRIDA KAHLO', NULL, NULL, N'animales.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (51, 8, N'MARILYN MONROE', NULL, NULL, N'personas.png')
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (52, 8, N'CANTINFLAS', NULL, NULL, NULL)
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (53, 8, N'BAILARINAS', NULL, NULL, NULL)
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (54, 8, N'OTRAS', NULL, NULL, NULL)
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (55, 9, N'FELINOS', NULL, NULL, NULL)
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (56, 9, N'AVES', NULL, NULL, NULL)
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (57, 9, N'REPTILES', NULL, NULL, NULL)
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (58, 9, N'CABALLOS', NULL, NULL, NULL)
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (59, 9, N'MASTODONTES', NULL, NULL, NULL)
GO
INSERT [dbo].[CatSubcategorias] ([idSubCategoria], [IdCategoria], [subCategoria], [descripcion], [url], [imagen]) VALUES (60, 10, N'ABSTRACTO', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[CatSubcategorias] OFF
GO
SET IDENTITY_INSERT [dbo].[catTamano] ON 
GO
INSERT [dbo].[catTamano] ([idTamano], [descripcion], [idSubCategoria]) VALUES (2, N'1/4 Carta (10.75 x 14 cm) 50 hojas/block ', 35)
GO
INSERT [dbo].[catTamano] ([idTamano], [descripcion], [idSubCategoria]) VALUES (3, N'Autoadherible Tabloide (33 x 47.5 cm)
', 48)
GO
INSERT [dbo].[catTamano] ([idTamano], [descripcion], [idSubCategoria]) VALUES (4, N'Taza 11 oz
', 2)
GO
INSERT [dbo].[catTamano] ([idTamano], [descripcion], [idSubCategoria]) VALUES (5, N'Taza  12 oz
', 7)
GO
INSERT [dbo].[catTamano] ([idTamano], [descripcion], [idSubCategoria]) VALUES (6, N'No. 5 (9 x 5 cm)
', 38)
GO
INSERT [dbo].[catTamano] ([idTamano], [descripcion], [idSubCategoria]) VALUES (7, N'1/4 Carta(14 x 10.5 cm)
', 39)
GO
INSERT [dbo].[catTamano] ([idTamano], [descripcion], [idSubCategoria]) VALUES (9, N'1/2 Carta(14 x 21 cm)
', 39)
GO
INSERT [dbo].[catTamano] ([idTamano], [descripcion], [idSubCategoria]) VALUES (10, N'Carta(14 x 21 cm)
', 39)
GO
INSERT [dbo].[catTamano] ([idTamano], [descripcion], [idSubCategoria]) VALUES (11, N'1/4 Carta (10.75 x 14 cm) 50 hojas/block ', 47)
GO
INSERT [dbo].[catTamano] ([idTamano], [descripcion], [idSubCategoria]) VALUES (15, N'Carta(14 x 21 cm)', 49)
GO
INSERT [dbo].[catTamano] ([idTamano], [descripcion], [idSubCategoria]) VALUES (16, N'Chica
', 1)
GO
INSERT [dbo].[catTamano] ([idTamano], [descripcion], [idSubCategoria]) VALUES (18, N'Mediana', 1)
GO
INSERT [dbo].[catTamano] ([idTamano], [descripcion], [idSubCategoria]) VALUES (19, N'Grande
', 1)
GO
INSERT [dbo].[catTamano] ([idTamano], [descripcion], [idSubCategoria]) VALUES (20, N'XL', 1)
GO
INSERT [dbo].[catTamano] ([idTamano], [descripcion], [idSubCategoria]) VALUES (21, N'Cubero', 10)
GO
INSERT [dbo].[catTamano] ([idTamano], [descripcion], [idSubCategoria]) VALUES (22, N'Chica
', 16)
GO
INSERT [dbo].[catTamano] ([idTamano], [descripcion], [idSubCategoria]) VALUES (23, N'Mediana
', 16)
GO
INSERT [dbo].[catTamano] ([idTamano], [descripcion], [idSubCategoria]) VALUES (24, N'Grande
', 16)
GO
INSERT [dbo].[catTamano] ([idTamano], [descripcion], [idSubCategoria]) VALUES (25, N'XL', 16)
GO
SET IDENTITY_INSERT [dbo].[catTamano] OFF
GO
SET IDENTITY_INSERT [dbo].[catTemas] ON 
GO
INSERT [dbo].[catTemas] ([idTema], [Descripcion], [idEmpresa]) VALUES (1, N'Escuela', 3)
GO
INSERT [dbo].[catTemas] ([idTema], [Descripcion], [idEmpresa]) VALUES (2, N'Regalos', 3)
GO
INSERT [dbo].[catTemas] ([idTema], [Descripcion], [idEmpresa]) VALUES (3, N'Eventos', 3)
GO
INSERT [dbo].[catTemas] ([idTema], [Descripcion], [idEmpresa]) VALUES (4, N'Personas', 4)
GO
INSERT [dbo].[catTemas] ([idTema], [Descripcion], [idEmpresa]) VALUES (5, N'Animales', 4)
GO
INSERT [dbo].[catTemas] ([idTema], [Descripcion], [idEmpresa]) VALUES (6, N'Abstracto', 4)
GO
SET IDENTITY_INSERT [dbo].[catTemas] OFF
GO
SET IDENTITY_INSERT [dbo].[catTemaSubCategoria] ON 
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (1, 1, N'Tema1', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (2, 1, N'Tema2', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (3, 1, N'Tema3', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (4, 2, N'Tema4', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (5, 2, N'Tema5', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (6, 2, N'Tema6', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (7, 3, N'Tema7', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (8, 3, N'Tema8', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (9, 3, N'Tema9', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (10, 4, N'Tema10', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (11, 4, N'Tema11', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (12, 4, N'Tema12', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (13, 5, N'Tema13', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (14, 5, N'Tema14', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (15, 5, N'Tema15', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (16, 6, N'Tema16', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (17, 6, N'Tema17', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (18, 6, N'Tema18', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (19, 7, N'Tema19', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (20, 7, N'Tema20', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (21, 7, N'Tema21', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (22, 8, N'Tema22', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (23, 8, N'Tema23', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (24, 8, N'Tema24', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (25, 9, N'Tema25', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (26, 9, N'Tema26', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (27, 9, N'Tema27', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (28, 10, N'Tema28', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (29, 10, N'Tema29', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (30, 10, N'Tema30', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (31, 11, N'Tema31', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (32, 11, N'Tema32', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (33, 11, N'Tema33', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (34, 12, N'Tema34', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (35, 12, N'Tema35', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (36, 12, N'Tema36', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (37, 13, N'Tema37', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (38, 13, N'Tema38', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (39, 13, N'Tema39', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (40, 14, N'Tema40', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (41, 14, N'Tema41', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (42, 14, N'Tema42', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (43, 15, N'Tema43', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (44, 15, N'Tema44', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (45, 15, N'Tema45', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (46, 16, N'Tema46', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (47, 16, N'Tema47', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (48, 16, N'Tema48', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (49, 17, N'Tema49', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (50, 17, N'Tema50', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (51, 17, N'Tema51', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (52, 18, N'Tema52', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (53, 18, N'Tema53', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (54, 18, N'Tema54', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (55, 19, N'Tema55', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (56, 19, N'Tema56', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (57, 19, N'Tema57', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (58, 20, N'Tema58', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (59, 20, N'Tema59', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (60, 20, N'Tema60', NULL, NULL, 3)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (61, 50, N'Tema61', NULL, NULL, 4)
GO
INSERT [dbo].[catTemaSubCategoria] ([id], [idsubCategoria], [Descripcion], [url], [imagen], [idEmpresa]) VALUES (62, 51, N'Tema62', NULL, NULL, 4)
GO
SET IDENTITY_INSERT [dbo].[catTemaSubCategoria] OFF
GO
SET IDENTITY_INSERT [dbo].[catTerminado] ON 
GO
INSERT [dbo].[catTerminado] ([idTerminado], [descripcion], [costo], [idSubCategoria]) VALUES (1, N'Engomado - 50 hojas 
', CAST(100.00 AS Decimal(6, 2)), 47)
GO
INSERT [dbo].[catTerminado] ([idTerminado], [descripcion], [costo], [idSubCategoria]) VALUES (2, N'Engomado - 50 hojas 
', CAST(90.00 AS Decimal(6, 2)), 35)
GO
INSERT [dbo].[catTerminado] ([idTerminado], [descripcion], [costo], [idSubCategoria]) VALUES (3, N'Sin Plastificado
', CAST(0.00 AS Decimal(6, 2)), 48)
GO
INSERT [dbo].[catTerminado] ([idTerminado], [descripcion], [costo], [idSubCategoria]) VALUES (4, N'Delgado Brillante (BOPP)
', CAST(3.00 AS Decimal(6, 2)), 48)
GO
INSERT [dbo].[catTerminado] ([idTerminado], [descripcion], [costo], [idSubCategoria]) VALUES (5, N'Delgado Mate (BOPP)
', CAST(4.00 AS Decimal(6, 2)), 48)
GO
SET IDENTITY_INSERT [dbo].[catTerminado] OFF
GO
SET IDENTITY_INSERT [dbo].[catTipo] ON 
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (6, N'Adhesivo Dimasa
', 48, 9)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (7, N'Ceramica', 2, 25)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (8, N'Magica', 2, 28)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (9, N'Sulfatado', 38, 11)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (10, N'Sulfatado', 38, 12)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (11, N'Couche de 150g
', 39, 13)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (12, N'Couche de 150g
', 39, 14)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (14, N'Couche de 150g
', 39, 15)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (15, N'Couche de 150g
', 39, 16)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (16, N'Couche de 150g
', 39, 17)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (17, N'Couche de 150g
', 39, 18)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (18, N'bond75g
', 47, 1)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (19, N'bond75g
', 47, 2)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (20, N'bond75g
', 47, 3)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (21, N'bond75g
', 47, 4)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (22, N'Bond 90 g 
', 47, 1)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (23, N'Bond 90 g 
', 47, 2)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (24, N'Bond 90 g 
', 47, 3)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (25, N'Bond 90 g 
', 47, 4)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (26, N'Conica', 7, 29)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (29, N'Couche de 150g', 49, 30)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (30, N'Cuello redondo
', 1, 31)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (31, N'Cuello redondo
', 1, 32)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (32, N'Cuello redondo
', 1, 33)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (33, N'Cuello redondo
', 1, 34)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (34, N'Cuello redondo
', 1, 35)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (35, N'Vidrio', 10, 36)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (36, N'Algodón', 16, 37)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (37, N'Algodón', 16, 38)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (38, N'Algodón', 16, 39)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (39, N'Algodón', 16, 40)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (40, N'Autocopiante
', 35, 5)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (41, N'Autocopiante
', 35, 6)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (42, N'Autocopiante
', 35, 7)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (43, N'Autocopiante
', 35, 8)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (44, N'Bond 75 g 
', 35, 5)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (45, N'Bond 75 g 
', 35, 6)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (46, N'Bond 75 g 
', 35, 7)
GO
INSERT [dbo].[catTipo] ([idTipo], [descripcion], [idSubCategoria], [IdImpresion]) VALUES (47, N'Bond 75 g 
', 35, 8)
GO
SET IDENTITY_INSERT [dbo].[catTipo] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (1, N'a1', N'a1', 1, N'c1', N'1', N'1', N'11111', NULL, N'e1', N'r1', N'111111111', N'111111111', N'a1@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (2, N'a2', N'a2', 1, N'c2', N'2', N'2', N'22222', NULL, N'e2', N'r2', N'2222222222', N'2222222222', N'a2@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (3, N'a3', N'a3', 1, N'c3', N'3', N'', N'333333', NULL, N'e3', N'', N'3333333', N'333333', N'a3@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (4, N'a4', N'a4', 1, N'c4', N'4', N'4', N'444444', NULL, N'', N'', N'54444444444', N'4444444444', N'a4@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (5, N'a5', N'a5', 1, N'c5', N'5', N'5', N'55555', N'c5', N'e5', N'r5', N'55555555551', N'5555555555', N'a5@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (6, N'a6', N'a6', 1, N'c6', N'6', N'6', N'666666', N'c6', N'e6', N'r6', N'6666666661', N'666666666', N'a6@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (7, N'a7', N'a7', 1, N'c7', N'7', N'7', N'77777', N'c7', N'', N'', N'777777777', N'777777771', N'a7@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (8, N'a8', N'a8', 1, N'c8', N'8', N'8', N'88888', N'c8', N'e8', N'r8', N'888888888', N'8888888881', N'a8@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (9, N'a9', N'a9', 1, N'c9', N'e9', N'i9', N'99999', N'c9', N'', N'', N'99999999', N'99999991', N'a9@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (10, N'd', N'd', 2, N'd', N'1', N'1', N'11111', N'c1', N'', N'', N'3333333', N'3454353453', N'a@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (11, N'a10', N'a10', 1, N'c10', N'10', N'10', N'10101', N'c10', N'e3', N'', N'1111111', N'111111110', N'a10@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (12, N'a3', N'asasdad', 1, N'2', N'21', N'', N'232323', N'sdfd', N'', N'', N'34345345', N'55555', N'a3@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (13, N'a3', N'asasdad', 1, N'asdsad', N'23', N'', N'21323', N'asdsada', N'', N'', N'3333333', N'2132332132', N'a@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (14, N'a3', N'asasdad', 1, N'a3', N'23', N'', N'33333', N'mia', N'21323', N'a', N'3333333', N'55555', N'a@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (15, N'vvvv', N'asasdad', 1, N'a3', N'23', N'10', N'22222', N'mia', N'dfgf', N'f3', N'3333333', N'sadas', N'a3@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (16, N'ZDSD', N'SASAD', 1, N'ASDAS', N'3442', N'4', N'21323', N'c3', N'e3', N'', N'3', N'2132332132', N'SAD', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (17, N'a3', N'asasdad', 1, N'fd', N'dgd', N'dfg', N'23432', N'3423', N'34234', N'23423', N'32423', N'2342', N'234', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (18, N'vvvv', N'asasdad', 1, N'asdsad', N'23', N'10', N'234423', N'mia', N'a', N'dd', N'34345345', N'55555', N'a@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (19, N'a3', N'xxx', 1, N'xxx', N'1', N'1', N'55560', N'asdsada', N'xxx', N'xxx', N'121212', N'121212', N'a1@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (20, N'Vicente', N'ffgdf', 2, N'fd', N'34', N'5', N'34444', N'c10', N'dsd', N'f3', N'3333333', N'55555', N'a3@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (21, N'Roberto', N'asasdad', 1, N'asdsad', N'23', N'10', N'21323', N'asdsada', N'e3', N'f3', N'3333333', N'2132332132', N'b@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (22, N'Aurora', N'asasdad', 1, N'a3', N'3', N'1', N'21323', N'wqweqwe', N'ee', N'ewe', N'3333333', N'2132332132', N'abbb@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (23, N'Maria', N'sadasd', 1, N'fd', N'1', N'1', N'21323', N'asdsada', N'e3', N'f3', N'3333333', N'2132332132', N'abbb@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (24, N'Alba', N'asasdad', 1, N'asdsad', N'23', N'2', N'34444', N'asdsada', N'sas', N'a', N'sas', N'2132332132', N'b@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (25, N'Alejandra', N'asasdad', 1, N'asdsad', N'3', N'1', N'21323', N'wqweqwe', N'e3', N'f3', N'555555', N'2132332132', N'sadasdsad', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (26, N'qqq', N'qqq', 1, N'asdsad', N'3', N'5', N'33333', N'mia', N'e3', N'f3', N'3333333', N'55555', N'a3@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (27, N'qqq', N'qqq', 1, N'asdsad', N'3', N'5', N'33333', N'mia', N'e3', N'f3', N'3333333', N'55555', N'a3@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (28, N'qqq', N'qqq', 1, N'asdsad', N'3', N'5', N'33333', N'mia', N'e3', N'f3', N'3333333', N'55555', N'a3@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (29, N'H20', N'asasdad', 1, N'a3', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (30, N'', N'', 1, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (31, N'Betito', N'asasdad', 1, N'asdsad', N'23', N'4', N'21323', N'ddd', N'e3', N'a', N'3333333', N'2132332132', N'a3@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (32, N'asds', N'asd', 1, N'asd', N'332', N'3232', N'2332323', N'ssdfsddfs', N'sdfsdf', N'sdfsd', N'52355235', N'325235', N'sdfds@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (33, N'asds', N'asd', 1, N'asd', N'332', N'3232', N'2332323', N'ssdfsddfs', N'sdfsdf', N'sdfsd', N'52355235', N'325235', N'sdfds@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (34, N'asds', N'asd', 1, N'asd', N'332', N'3232', N'2332323', N'ssdfsddfs', N'sdfsdf', N'sdfsd', N'52355235', N'325235', N'sdfds@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (35, N'asds', N'asd', 1, N'asd', N'332', N'3232', N'2332323', N'ssdfsddfs', N'sdfsdf', N'sdfsd', N'52355235', N'325235', N'sdfds@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (36, N'asds', N'asd', 1, N'asd', N'332', N'3232', N'2332323', N'ssdfsddfs', N'sdfsdf', N'sdfsd', N'52355235', N'325235', N'sdfds@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (37, N'asds', N'asd', 1, N'asd', N'332', N'3232', N'2332323', N'ssdfsddfs', N'sdfsdf', N'sdfsd', N'52355235', N'325235', N'sdfds@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (38, N'asds', N'asd', 1, N'asd', N'332', N'3232', N'2332323', N'ssdfsddfs', N'sdfsdf', N'sdfsd', N'52355235', N'325235', N'sdfds@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (39, N'Genaro', N'asd', 1, N'asd', N'332', N'3232', N'2332323', N'ssdfsddfs', N'sdfsdf', N'sdfsd', N'52355235', N'325235', N'sdfds@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (40, N'Pedro', N'sdfsdfs', 1, N'sdfsd', N'23', N'21', N'34567', N'sdfsfd', N'sdfsdf', N'sdfsd', N'52355235', N'325235', N'sdfds@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (41, N'asds', N'asd', 1, N'sdfsd', N'332', N'3232', N'2332323', N'ssdfsddfs', N'sdfsdf', N'sdfsd', N'52355235', N'325235', N'sdfds@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (42, N'asds', N'asd', 1, N'sdfsd', N'332', N'3232', N'2332323', N'ssdfsddfs', N'sdfsdf', N'sdfsd', N'52355235', N'325235', N'sdfds@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (43, N'asds', N'xxczxc', 1, N'cxcz', N'zxczx', N'zxc', N'zc', N'zxcz', N'zc', N'zxc', N'zcz', N'zc', N'zc', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (44, N'Carlos', N'ca', 1, N'ca', N'12', N'12', N'12121', N'ca', N'ca', N'ca', N'1212121212', N'1212121212', N'ca@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (45, N'Vic', N'vi', 1, N'vi', N'22', N'22', N'22222', N'vic', N'vic', N'vic', N'2222222222', N'2222222222', N'sdfds@hotmail.com', 1, 1)
GO
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Apellidos], [IdEstado], [Calle], [NoExt], [NoInt], [CodigoPostal], [Colonia], [EntreCalles], [Referencias], [TelefonoMovil], [TelefonoFijo], [Email], [IdUsuario], [IdEmpresa]) VALUES (46, N'Alejandra', N'Cortez', 1, N'Pino suarez', N'44', N'', N'55200', N'Emiliano Zapata', N'Emiliano Zapata y Sta. Teresa', N'Ninguna', N'52355235', N'2222222222', N'ale@gmail.com', 3, 2)
GO
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
INSERT [dbo].[HistorialProductosEliminados] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (110, N'Taza06', 4, 2, N'Taza', N'MODT12', N'Taza de 11 onzas, cerámica azul', 100, 1, N'T4.jpg', CAST(45.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 3, N'1         ', N'TAZ06', 0, 2, 4, CAST(N'2020-08-23T00:02:35.897' AS DateTime))
GO
INSERT [dbo].[HistorialProductosEliminados] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (109, N'Taza05', 4, 2, N'Taza', N'MODT07', N'Taza de 12 onzas, blanca ceramica ', 100, 1, N'T5.jpg', CAST(45.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 3, N'1         ', N'TAZ05', 0, 1, 4, CAST(N'2020-08-23T00:07:45.620' AS DateTime))
GO
INSERT [dbo].[HistorialProductosEliminados] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (108, N'Taza04', 4, 2, N'Taza', N'MODT03', N'Taza de 11 onzas, cerámica blanca', 100, 0, N'T6.jpg', CAST(45.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 3, N'1         ', N'TAZ04', 0, 2, 4, CAST(N'2020-08-23T00:14:53.247' AS DateTime))
GO
INSERT [dbo].[HistorialProductosEliminados] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (111, N'Taza03', 4, 2, N'Taza', N'MODT07', N'Taza de 11 onzas, cerámica blanca', 100, 1, N'comodin.jpg', CAST(45.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 3, N'1         ', N'TAZ04', 0, 0, 4, CAST(N'2020-08-23T00:20:33.380' AS DateTime))
GO
INSERT [dbo].[HistorialProductosEliminados] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (107, N'Taza 03', 4, 2, N'Taza', N'Taza', N'Taza con un gran corazón', 50, 1, N'T1.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'TAZ03', NULL, 1, 4, CAST(N'2020-08-23T02:16:49.600' AS DateTime))
GO
INSERT [dbo].[HistorialProductosEliminados] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (112, N'Taza03', 4, 2, N'Taza', N'MODT07', N'Hola hola holaa', 100, 1, N'comodin.jpg', CAST(45.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 3, N'1         ', N'TAZ03', 0, 2, 4, CAST(N'2020-08-23T02:19:38.900' AS DateTime))
GO
INSERT [dbo].[HistorialProductosEliminados] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (113, N'Taza03', 4, 2, N'Taza', N'MODT03', N'sdfdsfsdfsdfsdfdsfsdfsdfs', 100, 1, N'comodin.jpg', CAST(45.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 3, N'1         ', N'TAZ03', 0, 2, 4, CAST(N'2020-08-23T02:23:01.160' AS DateTime))
GO
INSERT [dbo].[HistorialProductosEliminados] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (114, N'Taza03', 4, 2, N'Taza', N'MODT07', N'xczxcczxcxzczxczxczxxcz', 100, 1, N'comodin.jpg', CAST(45.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), 3, N'0         ', N'TAZ03', 0, 2, 4, CAST(N'2020-08-23T02:29:59.120' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[InicioPedido] ON 
GO
INSERT [dbo].[InicioPedido] ([IdInicioPedido], [ValorInicialPedido], [IdEmpresa]) VALUES (1, 100, 1)
GO
INSERT [dbo].[InicioPedido] ([IdInicioPedido], [ValorInicialPedido], [IdEmpresa]) VALUES (2, 1000, 2)
GO
INSERT [dbo].[InicioPedido] ([IdInicioPedido], [ValorInicialPedido], [IdEmpresa]) VALUES (3, 1000, 3)
GO
SET IDENTITY_INSERT [dbo].[InicioPedido] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (2, N'Pintura2', 1, NULL, N'Adhler', N'rojo', N'La mas economica', 100, 1, N'P1.jpg', CAST(100.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'1         ', N'P2', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (3, N'Pintura3', 1, NULL, N'Adhler', N'azul', N'La mas economica y duradera', 100, 1, N'P2.jpg', CAST(100.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'1         ', N'P3', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (4, N'Pintura4', 1, NULL, N'Adhler', N'verde', N'La mas economica y duradera', 100, 1, N'P3.jpg', CAST(100.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'1         ', N'P4', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (5, N'Pintura5', 1, NULL, N'Adhler', N'rosa', N'La mas economica y duradera', 100, 1, N'P4.jpg', CAST(100.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'1         ', N'P5', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (6, N'Pintura6', 1, NULL, N'Adhler', N'negro', N'La mas economica y duradera', 100, 1, N'P5.jpg', CAST(100.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'1         ', N'P6', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (7, N'Pintura7', 2, NULL, N'Adhler', N'negro', N'La mas economica y duradera cat 2', 100, 1, N'P6.jpg', CAST(100.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'1         ', N'P7', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (8, N'Pintura8', 2, NULL, N'Adhler', N'rojo', N'La mas economica y duradera cat 2', 100, 1, N'P7.jpg', CAST(100.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'1         ', N'P8', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (9, N'Pintura9', 2, NULL, N'Adhler', N'verde', N'La mas economica y duradera cat 2', 100, 1, N'P8.jpg', CAST(100.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'1         ', N'P9', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (10, N'Pintura10', 2, NULL, N'Adhler', N'rosa', N'La mas economica y duradera cat 2', 100, 1, N'P9.jpg', CAST(100.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'1         ', N'P10', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (11, N'Pintura11', 2, NULL, N'Adhler', N'azul', N'La mas economica y duradera cat 2', 100, 1, N'P10.jpg', CAST(100.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'1         ', N'P11', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (12, N'Pintura12', 3, NULL, N'Adhler', N'azul', N'La mas economica y duradera cat 3', 100, 1, N'P11.jpg', CAST(100.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'1         ', N'P12', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (13, N'Pintura13', 3, NULL, N'Adhler', N'verde', N'La mas economica y duradera cat 3', 100, 1, N'P12.jpg', CAST(100.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'1         ', N'P13', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (14, N'Pintura14', 3, NULL, N'Adhler', N'rojo', N'La mas economica y duradera cat 3', 100, 1, N'P13.jpg', CAST(100.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'1         ', N'P14', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (15, N'Pintura15', 3, NULL, N'Adhler', N'rosa', N'La mas economica y duradera cat 3', 100, 1, N'P14.jpg', CAST(100.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'1         ', N'P15', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (16, N'Pintura16', 3, NULL, N'Adhler', N'negro', N'La mas economica y duradera cat 3', 100, 1, N'P15.jpg', CAST(100.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'1         ', N'P16', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (17, N'Equipo Medico 1', 1, NULL, N'ESP1', N'ESP1', N'Equipo de alta tecnología', 20, 2, N'EM1.jpg', CAST(10000.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), 2, N'0         ', N'EM1', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (18, N'Equipo Medico 2', 1, NULL, N'ESP2', N'ESP2', N'Equipo de alta tecnología 2', 20, 2, N'EM2.jpg', CAST(11000.00 AS Decimal(18, 2)), CAST(120000.00 AS Decimal(18, 2)), 2, N'0         ', N'EM2', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (19, N'Equipo Medico 3', 1, NULL, N'ESP3', N'ESP3', N'Equipo de alta tecnología 3', 20, 2, N'EM3.jpg', CAST(12000.00 AS Decimal(18, 2)), CAST(130000.00 AS Decimal(18, 2)), 2, N'0         ', N'EM3', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (20, N'Equipo Medico 4', 1, NULL, N'ESP4', N'ESP4', N'Equipo de alta tecnología 4', 20, 2, N'EM4.jpg', CAST(13000.00 AS Decimal(18, 2)), CAST(140000.00 AS Decimal(18, 2)), 2, N'0         ', N'EM4', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (21, N'Equipo Medico 5', 1, NULL, N'ESP5', N'ESP5', N'Equipo de alta tecnología 5', 20, 2, N'EM5.jpg', CAST(14000.00 AS Decimal(18, 2)), CAST(150000.00 AS Decimal(18, 2)), 2, N'0         ', N'EM5', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (22, N'Equipo Medico 6', 1, NULL, N'ESP6', N'ESP6', N'Equipo de alta tecnología 6', 20, 2, N'EM6.jpg', CAST(15000.00 AS Decimal(18, 2)), CAST(160000.00 AS Decimal(18, 2)), 2, N'0         ', N'EM6', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (23, N'Equipo Medico 7', 1, NULL, N'ESP7', N'ESP7', N'Equipo de alta tecnología 7', 20, 2, N'EM7.jpg', CAST(16000.00 AS Decimal(18, 2)), CAST(170000.00 AS Decimal(18, 2)), 2, N'0         ', N'EM7', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (24, N'Equipo Medico 8', 1, NULL, N'ESP8', N'ESP8', N'Equipo de alta tecnología 8', 20, 2, N'EM8.jpg', CAST(17000.00 AS Decimal(18, 2)), CAST(180000.00 AS Decimal(18, 2)), 2, N'0         ', N'EM8', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (25, N'Equipo Medico 9', 1, NULL, N'ESP9', N'ESP9', N'Equipo de alta tecnología 9', 20, 2, N'EM9.jpg', CAST(16000.00 AS Decimal(18, 2)), CAST(170000.00 AS Decimal(18, 2)), 2, N'0         ', N'EM9', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (26, N'Equipo Medico 10', 1, NULL, N'ESP10', N'ESP10', N'Equipo de alta tecnología 10', 20, 2, N'EM10.jpg', CAST(16000.00 AS Decimal(18, 2)), CAST(170000.00 AS Decimal(18, 2)), 2, N'0         ', N'EM10', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (27, N'Equipo Medico 11', 1, NULL, N'ESP11', N'ESP11', N'Equipo de alta tecnología 11', 20, 2, N'EM11.jpg', CAST(16000.00 AS Decimal(18, 2)), CAST(170000.00 AS Decimal(18, 2)), 2, N'0         ', N'EM11', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (28, N'Equipo Medico 12', 1, NULL, N'ESP12', N'ESP12', N'Equipo de alta tecnología 12', 20, 2, N'EM12.jpg', CAST(16000.00 AS Decimal(18, 2)), CAST(170000.00 AS Decimal(18, 2)), 2, N'0         ', N'EM12', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (29, N'Equipo Medico 13', 1, NULL, N'ESP13', N'ESP13', N'Equipo de alta tecnología 13', 20, 2, N'EM13.jpg', CAST(11000.00 AS Decimal(18, 2)), CAST(140000.00 AS Decimal(18, 2)), 2, N'0         ', N'EM13', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (30, N'Equipo Medico 14', 1, NULL, N'ESP14', N'ESP14', N'Equipo de alta tecnología 14', 20, 2, N'EM14.jpg', CAST(11000.00 AS Decimal(18, 2)), CAST(140000.00 AS Decimal(18, 2)), 2, N'0         ', N'EM14', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (31, N'Equipo Medico 15', 1, NULL, N'ESP15', N'ESP15', N'Equipo de alta tecnología 15', 20, 2, N'EM15.jpg', CAST(11000.00 AS Decimal(18, 2)), CAST(140000.00 AS Decimal(18, 2)), 2, N'0         ', N'EM15', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (32, N'Equipo Medico 16', 1, NULL, N'ESP16', N'ESP16', N'Equipo de alta tecnología 16', 20, 2, N'EM16.jpg', CAST(11000.00 AS Decimal(18, 2)), CAST(140000.00 AS Decimal(18, 2)), 2, N'0         ', N'EM16', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (33, N'Equipo Medico 17', 1, NULL, N'ESP17', N'ESP17', N'Equipo de alta tecnología 17', 20, 2, N'EM17.jpg', CAST(11000.00 AS Decimal(18, 2)), CAST(140000.00 AS Decimal(18, 2)), 2, N'0         ', N'EM17', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (34, N'Equipo Medico 18', 1, NULL, N'ESP18', N'ESP18', N'Equipo de alta tecnología 18', 20, 2, N'EM18.jpg', CAST(11000.00 AS Decimal(18, 2)), CAST(140000.00 AS Decimal(18, 2)), 2, N'0         ', N'EM18', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (35, N'Pintura 17', 1, NULL, N'Adhler', N'Adhler', N'AdhlerAdhlerAdhlerAdhlerAdhler', 120, 3, N'comodin.jpg', CAST(200.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), 1, N'2         ', N'P17', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (36, N'Pintura 18', 3, NULL, N'Adhler', N'Adhler', N'AdhlerAdhlerAdhlerAdhlerAdhlerAdhlerAdhlerAdhlerAdhlerAdhler', 234, 2, N'comodin.jpg', CAST(123.00 AS Decimal(18, 2)), CAST(123.00 AS Decimal(18, 2)), 1, N'3         ', N'P18', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (37, N'Pintura 19', 2, NULL, N'Adhler', N'ssd', N'sdfdsf ddfdsfs', 120, 3, N'comodin.jpg', CAST(200.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'2         ', N'P19', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (38, N'Equipo Medico 19', 3, NULL, N'FDFD', N'ssd', N'Es lo mas actual en equipo electronico', 10, 2, N'Equipo19.jpg', CAST(112000.00 AS Decimal(18, 2)), CAST(130000.00 AS Decimal(18, 2)), 2, N'2         ', N'EM19', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (39, N'Equipo Medico 20', 3, NULL, N'Medical', N'Xhdf', N'Es la mejor', 10, 3, N'Equipo20.jpg', CAST(10000.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(18, 2)), 2, N'3         ', N'EM20', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (40, N'Playera01', 4, 1, N'Playera', N'Cuello redondo', N'Playera cuello redondo', 100, 1, N'SUB3.png', CAST(45.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 3, N'1         ', N'MODT01', 1, 2, 4, CAST(N'2020-08-26T11:00:03.827' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (47, N'Plato01', 4, 3, N'Plato', N'Plato', N'Plato de ceramica grande', 100, 1, N'SUB7.png', CAST(45.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 3, N'1         ', N'MODT08', 0, 3, 4, CAST(N'2020-08-28T11:25:38.150' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (50, N'TAZA 01', 4, 2, N'Taza', N'Ceramica', N'Taza Blanca 11 oz
', 100, 1, N'sub1.png', CAST(45.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 3, N'1         ', N'MODT11', 0, 1, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (51, N'TAZA 02', 4, 2, N'Taza', N'Ceramica', N'Taza de cerámica  para papá', 100, 1, N'SUB2.png', CAST(45.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 3, N'1         ', N'MODT12', 0, 2, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (58, N'Termo01', 4, 4, N'Termo', N'Termo', N'Termo mediano color blanco', 100, 1, N'SUB4.png', CAST(45.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 3, N'1         ', N'MODT19', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (64, N'Lozeta01', 4, 5, N'Lozeta', N'LOZM1', N'Lozeta  ceramica de Egipto', 100, 1, N'SUB5.png', CAST(67.00 AS Decimal(18, 2)), CAST(67.00 AS Decimal(18, 2)), 3, N'1         ', N'LOZM1', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (65, N'Servilleta01', 4, 6, N'Servilleta', N'SERVMD1', N'SERVILLETA Blanca', 100, 1, N'SUB6.png', CAST(78.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 3, N'1         ', N'SERVMD1', 0, 3, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (66, N'Cubrebocas1', 4, 32, N'Cubrebocas', N'CUBRMOD1', N'Excelente cubrebocas', 100, 1, N'SUB8.png', CAST(34.00 AS Decimal(18, 2)), CAST(67.00 AS Decimal(18, 2)), 3, N'1         ', N'CUBRMOD1', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (67, N'Vasos01', 4, 33, N'Vasos', N'VASO01', N'Vasos grandes', 12, 3, N'SUB8.png', CAST(34.00 AS Decimal(18, 2)), CAST(56.00 AS Decimal(18, 2)), 3, N'1         ', N'VASO01', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (68, N'Vasos02', 5, 10, N'Vasos', N'VASO02', N'Vasos Mediano', 34, 1, N'SER1.png', CAST(23.00 AS Decimal(18, 2)), CAST(67.00 AS Decimal(18, 2)), 3, N'1         ', N'VASO02', 0, 3, 4, CAST(N'2020-08-28T11:51:29.603' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (69, N'Calendarios 01', 5, 8, N'Calendarios', N'CAL01', N'Calendarios de varios tamaños', 12, 1, N'SER3.png', CAST(45.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 3, N'1         ', N'CAL01', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (70, N'Invitaciones 01', 5, 22, N'Invitaciones', N'INV01', N'Invitaciones especiales ', 34, 23, N'SER4.png', CAST(67.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 3, N'1         ', N'INV01', 0, 3, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (71, N'Plumas 01', 5, 18, N'Plumas', N'PLU01', N'Plumas de varios tipos', 12, 1, N'SER5.png', CAST(45.00 AS Decimal(18, 2)), CAST(54.00 AS Decimal(18, 2)), 3, N'1         ', N'PLU01', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (72, N'Bolsas 01', 5, 9, N'Bolsas', N'BOL01', N'Bolsas de varios diseños y colore', 12, 1, N'SER6.png', CAST(67.00 AS Decimal(18, 2)), CAST(89.00 AS Decimal(18, 2)), 3, N'1         ', N'BOL01', 1, 0, 4, CAST(N'2023-01-17T17:55:15.563' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (73, N'Copas 01', 5, 20, N'Copas', N'Copa01', N'Copas de varios tamaños', 12, 1, N'SER7.png', CAST(23.00 AS Decimal(18, 2)), CAST(56.00 AS Decimal(18, 2)), 3, N'1         ', N'TEQ01', 1, 3, 4, CAST(N'2020-08-28T12:12:25.857' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (74, N'PortaCredencial 01', 5, 15, N'PortaCredencial', N'POR01', N'De plástico, colores diferentes', 12, 1, N'SER8.png', CAST(45.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 3, N'1         ', N'POR01', 0, 1, 4, CAST(N'2020-08-28T12:02:34.827' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (75, N'Cilindros 01', 5, 13, N'Cilindros', N'CIL01', N'Cilindros', 12, 1, N'SER9.png', CAST(23.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 3, N'1         ', N'CIL01', 0, 1, 4, CAST(N'2020-08-28T11:37:33.740' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (76, N'Encendedores', 5, 17, N'Encendedores', N'ENC01', N'Encendedores', 12, 12, N'SER11.png', CAST(45.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 3, N'1         ', N'ENC01', 0, 3, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (77, N'Ceniceros', 5, 12, N'Ceniceros', N'CEN01', N'Ceniceros', 12, 1, N'SER12.png', CAST(56.00 AS Decimal(18, 2)), CAST(78.00 AS Decimal(18, 2)), 3, N'1         ', N'CEN01', 0, 3, 4, CAST(N'2020-08-28T12:24:00.560' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (78, N'Goma01', 5, 14, N'Goma', N'GOM01', N'Goma', 12, 12, N'SER13.png', CAST(45.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 3, N'1         ', N'GOM01', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (79, N'Sobres01', 6, 25, N'Sobres01', N'SOB01', N'Sobres', 12, 12, N'SER14.png', CAST(45.00 AS Decimal(18, 2)), CAST(56.00 AS Decimal(18, 2)), 3, N'1         ', N'SOB01', 1, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (80, N'Folders', 6, 24, N'Folders', N'FOL01', N'Folders', 50, 1, N'IDIG7.png', CAST(45.00 AS Decimal(18, 2)), CAST(25.00 AS Decimal(18, 2)), 3, N'1         ', N'FOL01', 0, 1, 4, CAST(N'2023-01-17T17:47:05.040' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (81, N'Playera01', 5, 16, N'Playera', N'Playera', N'Playera negra median', 12, 1, N'SER2.png', CAST(23.00 AS Decimal(18, 2)), CAST(45.00 AS Decimal(18, 2)), 3, N'1         ', N'PLAY01', 0, 2, 4, CAST(N'2020-08-26T11:16:03.527' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (82, N'Pantuflas01', 5, 34, N'Pantufla', N'Pantufla', N'Plantufa para hombre', 100, 1, N'SER10.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'PAN01', 0, 2, 4, CAST(N'2020-08-26T11:14:48.947' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (83, N'Notas de Remisión 01', 7, 35, N'Notas de Remisión', N'Notas', N'1/4 Carta (10.75 x 14 cm) 50 hojas/block ', 50, 1, N'OFF1.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'NOT01', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (84, N'Notas de Remisión 02', 7, 35, N'Notas de Remisión', N'Notas', N'Notas de remisión horizontal', 50, 1, N'OFF2.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'NOT02', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (85, N'Hojas membretadas 01', 7, 36, N'Hojas membretadas', N'Hojas', N'Hojas membretadas carta', 50, 1, N'OFF3.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'MEM03', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (86, N'Recetas 01', 7, 37, N'Recetas ', N'Recetas', N'Recetas medicas tamaño estandar', 50, 1, N'OFF4.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'REC01', 0, 0, 4, CAST(N'2020-08-28T11:58:54.533' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (87, N'Tarjetas 01', 7, 38, N'Tarjetas', N'Tarjetas', N'No. 5 (9 x 5 cm)
', 50, 1, N'OFF5.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'TAR01', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (88, N'Tarjetas 02', 7, 38, N'Tarjetas', N'Tarjetas', N'Tarjetas de presentación Blancas', 50, 1, N'OFF6.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'TAR02', 0, 0, 4, CAST(N'2020-08-28T11:32:06.143' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (89, N'Tarjetas 03', 7, 38, N'Tarjetas', N'Tarjetas', N'Tarjetas de presentación Rojas', 50, 1, N'OFF7.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'TAR03', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (90, N'Volantes 01', 7, 39, N'Volantes', N'Volantes', N'1/4 Carta(14 x 10.5 cm)
', 50, 1, N'OFF9.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'VOL01', 0, 0, 4, CAST(N'2020-08-28T11:50:02.330' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (91, N'Volantes 02', 7, 39, N'Volantes', N'Volantes', N'1/2 Carta(14 x 21 cm)
', 100, 1, N'OFF10.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'VOL02', 0, 0, 4, CAST(N'2023-01-17T17:46:23.517' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (92, N'Volantes 03', 7, 39, N'Volantes ', N'Volantes', N'Volantes con menú', 50, 1, N'OFF11.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'VOL03', 1, 0, 4, CAST(N'2023-01-17T17:54:41.570' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (93, N'Catálogo 01', 7, 40, N'Catálogo', N'Catálogo', N'Catálogo de viajes', 50, 1, N'OFF12.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'CAT01', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (94, N'Cuadernos 01', 7, 41, N'Cuadernos', N'Cuadernos', N'Cuadernos tamaño profesional', 50, 1, N'OFF13.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'CUA01', 0, 1, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (95, N'Cajas 01', 7, 42, N'Cajas', N'Cajas', N'Caja de multiples colores', 50, 1, N'OFF14.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'CAJ01', 0, 2, 4, CAST(N'2020-08-28T11:27:57.090' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (96, N'Tabloide 01', 6, 27, N'Tabloide', N'Tabloide', N'Tabloide diferente en muchos tamaños', 50, 1, N'IDIG1.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'TAB01', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (97, N'Cuaderno 01', 6, 23, N'Cuaderno', N'Cuaderno', N'Cuaderno profesional', 50, 1, N'IDIG2.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'CUAIMP01', 0, 0, 4, CAST(N'2020-08-28T12:10:36.377' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (98, N'Diplomas 01', 6, 43, N'Diplomas', N'Diplomas', N'Diplomas de dos colores', 50, 1, N'IDIG3.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'DIP01', 0, 1, 4, CAST(N'2020-08-28T11:34:34.810' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (99, N'Hojas de Menú', 6, 28, N'Hojas de Menú', N'Hojas de Menú', N'Hojas de Menú', 50, 1, N'IDIG4.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'HME01', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (100, N'Esquela 01', 6, 44, N'Esquela', N'Esquela', N'Esquela', 50, 1, N'IDIG5.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'ESQ01', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (101, N'Separadores 01', 6, 26, N'Separadores', N'Separadores', N'Separadores Grandes', 100, 1, N'IDIG6.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'SEP01', 0, 0, 4, CAST(N'2023-01-17T17:46:00.883' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (102, N'Bitacora 01', 6, 45, N'Bitacoras', N'Bitacoras', N'Bitacoras', 50, 1, N'IDIG8.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'3         ', N'BIT01', 0, 1, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (103, N'Lonas 01', 6, 46, N'Lonas', N'Lonas', N'Lonas', 50, 1, N'IDIG9.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'LON01', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (104, N'Block de Notas', 7, 47, N'Block de Notas', N'Block de Notas', N'Block de Notas', 50, 1, N'IDIG2.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'BLO01', 0, 0, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (105, N'Etiquetas', 6, 48, N'Etiquetas', N'Etiquetas', N'Autoadherible Tabloide (33 x 47.5 cm)
LL', 50, 1, N'Off13.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'ETI01', 0, 0, 4, CAST(N'2020-08-28T12:22:27.357' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (106, N'Triptico', 7, 49, N'Triptico', N'Triptico', N'Triptico Carta(14 x 21 cm)
', 50, 1, N'Off13.png', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'TRIP01', 0, 1, NULL, NULL)
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (115, N'TAZA04', 4, 2, N'Taza', N'niña', N'Rojo Rojito con azul', 100, 1, N'T6.jpg', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 3, N'1         ', N'TAZ04', 0, 2, 4, CAST(N'2020-08-26T10:16:05.973' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (118, N'FRIDA 1', 8, 50, N'Lucy', N'Lucy', N'Frida Calo en arte pop en relieve la medida es de  80 cm x 120 cm', 1, 1, N'Frida1.jpeg', CAST(1800.00 AS Decimal(18, 2)), CAST(1800.00 AS Decimal(18, 2)), 4, N'1         ', N'FRIDA1', 0, 0, 6, CAST(N'2021-09-26T17:44:38.363' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (121, N'FRIDA 2', 8, 50, N'LUCY', N'LUCY', N'Frida Kahlo en Arte Pop medidas 80 cm x  120 cm', 1, 1, N'Frida2.jpeg', CAST(1800.00 AS Decimal(18, 2)), CAST(1800.00 AS Decimal(18, 2)), 4, N'1         ', N'FRIDA2', 0, 4, 6, CAST(N'2021-09-26T17:52:49.580' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (122, N'FRIDA 3', 8, 50, N'LUCY', N'LUCY', N'Frida Kahlo Corazón expuesto medidas 80 cm x 120 cm', 1, 1, N'Frida3.jpeg', CAST(1800.00 AS Decimal(18, 2)), CAST(1800.00 AS Decimal(18, 2)), 4, N'1         ', N'FRIDA3', 0, 4, 6, CAST(N'2021-09-26T17:55:39.333' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (123, N'FRIDA 4', 8, 50, N'LUCY', N'LUCY', N'Frida Kahlo en pasta relieve FLORES medida de 80cm x 120 cm', 1, 1, N'Frida4.jpeg', CAST(1800.00 AS Decimal(18, 2)), CAST(1800.00 AS Decimal(18, 2)), 4, N'1         ', N'FRIDA4', 0, 4, 6, CAST(N'2021-09-26T17:59:03.840' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (124, N'FRIDA 5', 8, 0, N'LUCY', N'LUCY', N'Frida Kahlo ARTE POP medidas de 80 cm x 120 cm', 1, 1, N'Frida5.jpeg', CAST(1800.00 AS Decimal(18, 2)), CAST(1800.00 AS Decimal(18, 2)), 4, N'1         ', N'FRIDA5', 0, 4, 6, CAST(N'2021-09-26T18:00:39.290' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (125, N'BAILARINA 1', 8, 53, N'LUCY', N'LUCY', N'Bailarina en hoja de oro y espatuelado medida 80 cm x 120 cm', 1, 1, N'Bailarina1.jpeg', CAST(2300.00 AS Decimal(18, 2)), CAST(2300.00 AS Decimal(18, 2)), 4, N'1         ', N'BAILARINA1', 0, 4, 6, CAST(N'2021-09-26T18:03:40.750' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (126, N'MARILYN MONROE 1', 8, 51, N'LUCY', N'LUCY', N'MARILYN MONROE MEDIDA 80 cm x 120 cm', 1, 1, N'MARILYNMONROE1.jpeg', CAST(1800.00 AS Decimal(18, 2)), CAST(1800.00 AS Decimal(18, 2)), 4, N'1         ', N'MARILYNMONROE1', 0, 4, 6, CAST(N'2021-09-26T18:07:31.857' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (127, N'MARILYN MONROE 2', 8, 51, N'LUCY', N'LUCY', N'MARILYN MONROE medida 80 cm x 120 cm', 1, 1, N'MARILYNMONROE2.jpeg', CAST(1800.00 AS Decimal(18, 2)), CAST(1800.00 AS Decimal(18, 2)), 4, N'1         ', N'MARILYNMONROE2', 0, 4, 6, CAST(N'2021-09-26T18:55:03.060' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (129, N'CANTINFLAS 1', 8, 52, N'LUCY', N'LUCY', N'CANTINFLAS 1 ARTE POP 60 cm x 120 cm', 1, 1, N'CANTINFLAS1.jpeg', CAST(1800.00 AS Decimal(18, 2)), CAST(1800.00 AS Decimal(18, 2)), 4, N'1         ', N'CANTINFLAS1', 0, 4, 6, CAST(N'2021-09-26T18:58:27.350' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (131, N'BAJO LA LLUVIA', 8, 54, N'LUCY', N'LUCY', N'Bajo la lluvia espatuleado medida 80 cm x 120 cm', 1, 1, N'BAJOLALLUVIA1.jpeg', CAST(2500.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), 4, N'1         ', N'BAJOLALLUVIA1', 0, 4, 6, CAST(N'2021-09-26T19:08:49.817' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (132, N'ELEFANTE 1', 9, 59, N'LUCY', N'LUCY', N'Elefante en hoja de oro medida 60 cm x 130 cm', 1, 1, N'Elefante1.jpeg', CAST(1600.00 AS Decimal(18, 2)), CAST(1600.00 AS Decimal(18, 2)), 4, N'1         ', N'elefante1', 0, 5, 6, CAST(N'2021-10-03T17:13:44.810' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (133, N'ELEFANTE 2', 9, 59, N'LUCY', N'LUCY', N'Elefante en hoja de plata y pasta relieve medida 60 cm x 130 cm', 1, 1, N'Elefante2.jpeg', CAST(1600.00 AS Decimal(18, 2)), CAST(1600.00 AS Decimal(18, 2)), 4, N'1         ', N'elefante2', 0, 5, 6, CAST(N'2021-10-03T17:18:33.483' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (134, N'CABALLO 1', 9, 58, N'LUCY', N'LUCY', N'Caballo en óleo con hoja de oro asfalto, destellos de polvo de oro en los cabellos medida 80 cm x 120 cm', 1, 1, N'caballo1.jpeg', CAST(2500.00 AS Decimal(18, 2)), CAST(2500.00 AS Decimal(18, 2)), 4, N'1         ', N'caballo1', 0, 5, 6, CAST(N'2021-10-03T17:21:25.013' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (135, N'RINOCERONTE 1', 9, 59, N'LUCY', N'LUCY', N'Rinoceronte en arte pop con pasta relieve medida de 80 cm x 120 cm', 1, 1, N'rinoceronte1.jpeg', CAST(200.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 4, N'1         ', N'rinoceronte1', 0, 5, 6, CAST(N'2021-10-03T17:23:58.823' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (136, N'LEÓN 1', 9, 55, N'LUCY', N'LUCY', N'León de arte pop medida 80 cm x 120 cm', 1, 1, N'Leon1.jpeg', CAST(1800.00 AS Decimal(18, 2)), CAST(1800.00 AS Decimal(18, 2)), 4, N'1         ', N'leon1', 0, 5, 6, CAST(N'2021-10-03T17:31:34.000' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (137, N'BUHO 1', 9, 56, N'LUCY', N'LUCY', N'Búho bebe en arte pop color, medida 80 cm x 100 cm con hoja de plata ', 1, 1, N'buho1.jpeg', CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 4, N'0         ', N'buho1', 0, 5, 6, CAST(N'2021-10-03T17:36:07.927' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (138, N'BUHO 2', 9, 56, N'LUCY', N'LUCY', N'Búho bebe en arte pop medidas 80 cm x 100 cm', 1, 1, N'buho2.jpeg', CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 4, N'1         ', N'buho2', 0, 5, 6, CAST(N'2021-10-03T17:38:14.683' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (139, N'LEÓN 2', 9, 55, N'LUCY', N'LUCY', N'León en oleo medida 80 x 120 cm', 1, 1, N'leon2.jpeg', CAST(1500.00 AS Decimal(18, 2)), CAST(1500.00 AS Decimal(18, 2)), 4, N'1         ', N'leon2', 0, 5, 6, CAST(N'2021-10-03T17:40:18.173' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (140, N'JIRAFA 1', 9, 59, N'LUCY', N'LUCY', N'Jirafa en un atardecer mamá e hija en oleó medida 80 x 100 cm', 1, 1, N'jirafa1.jpg', CAST(1500.00 AS Decimal(18, 2)), CAST(1500.00 AS Decimal(18, 2)), 4, N'1         ', N'jirafa1', 0, 5, 6, CAST(N'2021-10-03T17:43:25.470' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (141, N'TORTUGA 1', 9, 57, N'LUCY', N'LUCY', N'Tortuga en arte pop medida en 80 x 120 ', 1, 1, N'tortuga1.jpeg', CAST(1500.00 AS Decimal(18, 2)), CAST(1500.00 AS Decimal(18, 2)), 4, N'1         ', N'tortuga1', 0, 5, 6, CAST(N'2021-10-03T17:53:48.257' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (142, N'TORTUGA 2', 9, 57, N'LUCY', N'LUCY', N'Tortuga con pasta relieve medidas 100 x 100 cm', 1, 1, N'tortuga2.jpeg', CAST(1500.00 AS Decimal(18, 2)), CAST(1500.00 AS Decimal(18, 2)), 4, N'1         ', N'tortuga2', 0, 5, 6, CAST(N'2021-10-03T17:55:43.420' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (143, N'TIGRE1', 9, 55, N'LUCY', N'LUCY', N'Tigre en hoja de oro y asfalto medida 80 x 120 cm', 1, 1, N'tigre1.jpg', CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 4, N'1         ', N'tigre1', 0, 5, 6, CAST(N'2021-10-03T17:57:45.753' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (144, N'LEÓN 3', 9, 55, N'LUCY', N'LUCY', N'León en pasta relieve y hoja de oro medida 60 x 130 cm', 1, 1, N'leon3.jpeg', CAST(1500.00 AS Decimal(18, 2)), CAST(1500.00 AS Decimal(18, 2)), 4, N'1         ', N'leon3', 0, 5, 6, CAST(N'2021-10-03T18:02:44.187' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (145, N'RINOCERONTE 2', 9, 59, N'LUCY', N'LUCY', N'Rinoceronte en hoja de plata en oleó asfalto medida 80 x 100 cm', 1, 1, N'rinoceronte2.jpeg', CAST(1500.00 AS Decimal(18, 2)), CAST(1500.00 AS Decimal(18, 2)), 4, N'1         ', N'rinoceronte2', 0, 5, 6, CAST(N'2021-10-03T18:06:08.803' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (146, N'ELEFANTE 3', 9, 59, N'LUCY', N'LUCY', N'Elefante en óleo con hoja de oro medidas 80 x 120 cm', 1, 1, N'elefante3.jpeg', CAST(1800.00 AS Decimal(18, 2)), CAST(1800.00 AS Decimal(18, 2)), 4, N'1         ', N'elefante3', 0, 5, 6, CAST(N'2021-10-03T18:13:55.697' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (147, N'LEÓN 4', 9, 55, N'LUCY', N'LUCY', N'León en pasta relieve hoja de plata en DOS CUADROS 60 x130 cm', 1, 1, N'leon4.jpeg', CAST(3000.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), 4, N'1         ', N'leon4', 0, 5, 6, CAST(N'2021-10-03T18:16:03.320' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (148, N'CEBRA 1', 9, 58, N'LUCY', N'LUCY', N'Cebra en óleo y hoja de pasta medida 60 x 130 cm', 1, 1, N'cebra1.jpeg', CAST(1500.00 AS Decimal(18, 2)), CAST(1500.00 AS Decimal(18, 2)), 4, N'1         ', N'cebra1', 0, 5, 6, CAST(N'2021-10-03T18:18:05.053' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (149, N'LEÓN 5', 9, 55, N'LUCY', N'LUCY', N'León en hoja de oro medida en 80 x 120 cm', 1, 1, N'leon5.jpeg', CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 4, N'1         ', N'leon5', 0, 5, 6, CAST(N'2021-10-03T18:19:44.347' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (150, N'CABALLO 2', 9, 58, N'LUCY', N'LUCY', N'Caballo en óleo medida 80 x 120 cm', 1, 1, N'caballo2.jpeg', CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 4, N'1         ', N'caballo2', 0, 5, 6, CAST(N'2021-10-03T18:21:52.040' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (151, N'CABALLO 3', 9, 58, N'LUCY', N'LUCY', N'Caballo en óleo medida 80 x 120', 1, 1, N'caballo3.jpeg', CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 4, N'1         ', N'caballo3', 0, 5, 6, CAST(N'2021-10-03T18:23:35.700' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (152, N'CABALLO 4', 9, 58, N'LUCY', N'LUCY', N'Caballo en oleó medida 80 x 120 cm', 1, 1, N'caballo4.jpeg', CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 4, N'1         ', N'caballo4', 0, 5, 6, CAST(N'2021-10-03T18:24:58.587' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (153, N'CABALLO 5', 9, 58, N'LUCY', N'LUCY', N'Caballo en óleo medida 80 x 120 cm', 1, 1, N'caballo5.jpeg', CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 4, N'1         ', N'caballo5', 0, 5, 6, CAST(N'2021-10-03T18:26:51.260' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (154, N'CABALLO 6', 9, 58, N'LUCY', N'LUCY', N'Caballo en óleo medida 80 x 120 cm', 1, 1, N'caballo6.jpeg', CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 4, N'1         ', N'caballo6', 0, 5, 6, CAST(N'2021-10-03T18:28:21.053' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (155, N'CABALLO 7', 9, 58, N'LUCY', N'LUCY', N'Caballo en óleo medida 80 x 120 cm', 1, 1, N'caballo7.jpeg', CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 4, N'1         ', N'caballo7', 0, 5, 6, CAST(N'2021-10-03T18:31:43.883' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (156, N'GALLO 1', 9, 56, N'LUCY', N'LUCY', N'Gallo en óleo medida 80 x 100 cm ', 1, 1, N'gallo1.jpeg', CAST(1800.00 AS Decimal(18, 2)), CAST(1800.00 AS Decimal(18, 2)), 4, N'1         ', N'gallo1', 0, 5, 6, CAST(N'2021-10-03T18:33:07.060' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (157, N'PERRO 1', 9, 55, N'LUCY', N'LUCY', N'Perro en arte pop medida en 80 x 120 cm', 1, 1, N'perro1.jpg', CAST(3000.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), 4, N'1         ', N'perro1', 0, 5, 6, CAST(N'2021-10-03T18:35:29.030' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (158, N'Abstracto 1', 10, 60, N'LUCY', N'LUCY', N'Espatulado con hoja de oro medidas 60 x 130 cm', 1, 1, N'abstracto1.jpeg', CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 4, N'0         ', N'abstracto1', 0, 6, 6, CAST(N'2021-10-03T18:42:38.027' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (159, N'Abstracto 2', 10, 60, N'LUCY', N'LUCY', N'Abstracto pasta relieve hoja de oro medidas  60 x 130 cm', 1, 1, N'abstracto2.jpeg', CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 4, N'1         ', N'abstracto2', 0, 6, 6, CAST(N'2021-10-03T18:44:39.713' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (160, N'Abstracto 3', 10, 60, N'LUCY', N'LUCY', N'Abstracto  espatulado en hoja de oro medida en azul  de 60 x 130 precio 2000', 1, 1, N'abstracto3.jpeg', CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 4, N'1         ', N'abstracto3', 0, 6, 6, CAST(N'2021-10-03T18:46:53.050' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (161, N'Abstracto 4', 10, 60, N'LUCY', N'LUCY', N'Abstracto en relieve en tonos grises espatulado medidas 60 x 130 cm ', 1, 1, N'abstracto4.jpeg', CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 4, N'1         ', N'abstracto4', 0, 6, 6, CAST(N'2021-10-03T18:49:04.490' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (162, N'Abstracto 5', 10, 60, N'LUCY', N'LUCY', N'Abstracto en gota grises medida 60 x 130 cm', 1, 1, N'abstracto5.jpeg', CAST(1500.00 AS Decimal(18, 2)), CAST(1800.00 AS Decimal(18, 2)), 4, N'1         ', N'abstracto5', 0, 6, 6, CAST(N'2021-10-03T18:50:52.853' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (163, N'Abstracto 6', 10, 60, N'LUCY', N'LUCY', N'Abstracto pasta relieve las palomas medida de 60 x 130 cm', 1, 1, N'abstracto6.jpg', CAST(1800.00 AS Decimal(18, 2)), CAST(1800.00 AS Decimal(18, 2)), 4, N'1         ', N'abstracto6', 0, 6, 6, CAST(N'2021-10-03T18:52:56.723' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (164, N'Abstracto 7', 10, 60, N'LUCY', N'LUCY', N'Abstracto destellos hoja de oro medida 60 x130 cm', 1, 1, N'abstracto7.jpeg', CAST(2000.00 AS Decimal(18, 2)), CAST(2000.00 AS Decimal(18, 2)), 4, N'1         ', N'abstracto7', 0, 6, 6, CAST(N'2021-10-03T18:56:16.100' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (165, N'Abstracto 8', 10, 60, N'LUCY', N'LUCY', N'Abstracto  en acrílico azul negro medida 50 x 70 cm', 1, 1, N'abstracto8.jpeg', CAST(800.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), 4, N'1         ', N'abstracto8', 0, 6, 6, CAST(N'2021-10-03T18:58:06.430' AS DateTime))
GO
INSERT [dbo].[Productos] ([IdProducto], [NomProducto], [IdCategoria], [idSubCategoria], [Marca], [Modelo], [Descripcion], [Unidad], [IdProveedor], [Imagen], [Precio], [Costo], [IdEmpresa], [IdTalla], [ClaveProducto], [oferta], [idTema], [idUsuarioModifica], [fechaActualizacion]) VALUES (166, N'Abstracto 9', 10, 60, N'LUCY', N'LUCY', N'Abstracto en relieve marco en hoja de oro medida 100 x 150 cm', 1, 1, N'abstracto9.jpeg', CAST(3500.00 AS Decimal(18, 2)), CAST(3500.00 AS Decimal(18, 2)), 4, N'1         ', N'abstracto9', 0, 6, 6, CAST(N'2021-10-03T18:59:52.467' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
INSERT [dbo].[Roles] ([idRol], [descripcionRol], [fechaAlta], [activo], [idUsuarioAlta], [fechaModificacion], [idUsuarioModifica]) VALUES (1, N'Super Administrador', CAST(N'2020-06-25T00:00:00.000' AS DateTime), 1, 0, NULL, NULL)
GO
INSERT [dbo].[Roles] ([idRol], [descripcionRol], [fechaAlta], [activo], [idUsuarioAlta], [fechaModificacion], [idUsuarioModifica]) VALUES (2, N'Administrador', CAST(N'2020-06-25T00:00:00.000' AS DateTime), 1, 0, NULL, NULL)
GO
INSERT [dbo].[Roles] ([idRol], [descripcionRol], [fechaAlta], [activo], [idUsuarioAlta], [fechaModificacion], [idUsuarioModifica]) VALUES (3, N'Cliente', CAST(N'2020-06-25T00:00:00.000' AS DateTime), 1, 0, NULL, NULL)
GO
INSERT [dbo].[Roles] ([idRol], [descripcionRol], [fechaAlta], [activo], [idUsuarioAlta], [fechaModificacion], [idUsuarioModifica]) VALUES (4, N'Invitado', CAST(N'2020-08-25T00:00:00.000' AS DateTime), 1, 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [usuario], [emailUsuario], [nombreUsuario], [apPaternoUsuario], [apMaternoUsuario], [contrasenaUsuario], [IdRol], [fechaUltimoIngreso], [fechaAlta], [fechaModificacion], [IdEmpresa], [contrasena], [recuperaContrasena], [activo], [intentos]) VALUES (1, N'admin', N'', N'Administrador', N'olmedo', N'm         ', N'admin', 1, CAST(N'2020-07-09T00:59:51.330' AS DateTime), NULL, NULL, 1, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [usuario], [emailUsuario], [nombreUsuario], [apPaternoUsuario], [apMaternoUsuario], [contrasenaUsuario], [IdRol], [fechaUltimoIngreso], [fechaAlta], [fechaModificacion], [IdEmpresa], [contrasena], [recuperaContrasena], [activo], [intentos]) VALUES (2, N'Invitado1', N'', N'Ventas', N'', N'          ', N'Invitado1', 2, CAST(N'2020-05-29T13:52:43.450' AS DateTime), CAST(N'2019-06-19T16:17:00.893' AS DateTime), NULL, 1, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [usuario], [emailUsuario], [nombreUsuario], [apPaternoUsuario], [apMaternoUsuario], [contrasenaUsuario], [IdRol], [fechaUltimoIngreso], [fechaAlta], [fechaModificacion], [IdEmpresa], [contrasena], [recuperaContrasena], [activo], [intentos]) VALUES (3, N'Invitado2', N'', N'Equipo Medico', N'Medico', N'Medico    ', N'Invitado2', 1, CAST(N'2020-07-10T11:55:32.260' AS DateTime), CAST(N'2019-06-19T16:17:40.877' AS DateTime), NULL, 2, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [usuario], [emailUsuario], [nombreUsuario], [apPaternoUsuario], [apMaternoUsuario], [contrasenaUsuario], [IdRol], [fechaUltimoIngreso], [fechaAlta], [fechaModificacion], [IdEmpresa], [contrasena], [recuperaContrasena], [activo], [intentos]) VALUES (4, N'adminG', NULL, N'Administrador', N'Serigrafia', N'Serigrafia', N'adminG', 2, CAST(N'2020-07-16T00:10:00.490' AS DateTime), CAST(N'2020-07-01T00:00:00.000' AS DateTime), NULL, 3, NULL, NULL, 1, NULL)
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [usuario], [emailUsuario], [nombreUsuario], [apPaternoUsuario], [apMaternoUsuario], [contrasenaUsuario], [IdRol], [fechaUltimoIngreso], [fechaAlta], [fechaModificacion], [IdEmpresa], [contrasena], [recuperaContrasena], [activo], [intentos]) VALUES (5, N'Invitado', NULL, N'Invitado1', N'Invitado', N'Invitado  ', N'Invitado', 4, CAST(N'2020-08-25T00:00:00.000' AS DateTime), CAST(N'2020-08-25T00:00:00.000' AS DateTime), NULL, 4, NULL, NULL, 1, 0)
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [usuario], [emailUsuario], [nombreUsuario], [apPaternoUsuario], [apMaternoUsuario], [contrasenaUsuario], [IdRol], [fechaUltimoIngreso], [fechaAlta], [fechaModificacion], [IdEmpresa], [contrasena], [recuperaContrasena], [activo], [intentos]) VALUES (6, N'adminLucy', NULL, N'Lucy', N'Vazquez', N'Vazquez   ', N'admin', 2, CAST(N'2021-09-04T00:00:00.000' AS DateTime), CAST(N'2021-09-04T00:00:00.000' AS DateTime), NULL, 4, NULL, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET IDENTITY_INSERT [dbo].[VentaDetalle] ON 
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (1, N'100', 2, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (2, N'100', 3, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (3, N'100', 4, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (4, N'101', 3, 2, CAST(200.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (5, N'101', 4, 2, CAST(200.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (6, N'101', 5, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (7, N'102', 4, 2, CAST(200.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (8, N'102', 5, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (9, N'103', 4, 2, CAST(200.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (10, N'103', 5, 3, CAST(300.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (11, N'103', 6, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (12, N'104', 6, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (13, N'104', 7, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (14, N'105', 5, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (15, N'105', 4, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (16, N'106', 3, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (17, N'107', 4, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (18, N'108', 3, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (19, N'109', 3, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (20, N'110', 2, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (21, N'110', 3, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (22, N'111', 4, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (23, N'112', 5, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (24, N'113', 2, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (25, N'114', 3, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (26, N'115', 2, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (27, N'115', 3, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (28, N'116', 5, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (29, N'116', 5, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (30, N'116', 5, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (31, N'117', 2, 2, CAST(200.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (32, N'117', 3, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (33, N'118', 2, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (34, N'118', 3, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (35, N'118', 4, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (36, N'119', 4, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (37, N'119', 6, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (38, N'120', 3, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (39, N'121', 3, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (40, N'121', 8, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (41, N'122', 9, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (42, N'123', 9, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (43, N'124', 8, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (44, N'124', 9, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (45, N'125', 9, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (46, N'125', 3, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (47, N'125', 9, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (48, N'126', 8, 2, CAST(200.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (49, N'126', 8, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (50, N'126', 9, 1, CAST(100.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (51, N'1000', 20, 1, CAST(13000.00 AS Decimal(18, 2)), 2)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (52, N'1000', 24, 1, CAST(17000.00 AS Decimal(18, 2)), 2)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (53, N'1001', 27, 1, CAST(16000.00 AS Decimal(18, 2)), 2)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (54, N'1001', 18, 1, CAST(11000.00 AS Decimal(18, 2)), 2)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (55, N'1002', 19, 2, CAST(12000.00 AS Decimal(18, 2)), 2)
GO
INSERT [dbo].[VentaDetalle] ([IdDetalle], [NumPedido], [IdProducto], [CantidadProducto], [Subtotal], [IdEmpresa]) VALUES (56, N'1002', 17, 2, CAST(20000.00 AS Decimal(18, 2)), 2)
GO
SET IDENTITY_INSERT [dbo].[VentaDetalle] OFF
GO
SET IDENTITY_INSERT [dbo].[Ventas] ON 
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (1, N'100', CAST(N'2020-06-01T16:08:12.867' AS DateTime), 1, 1, CAST(300.00 AS Decimal(18, 2)), 1, 1)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (2, N'101', CAST(N'2020-06-01T16:12:55.303' AS DateTime), 1, 1, CAST(500.00 AS Decimal(18, 2)), 1, 2)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (3, N'102', CAST(N'2020-06-01T16:16:21.557' AS DateTime), 1, 1, CAST(300.00 AS Decimal(18, 2)), 1, 3)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (4, N'103', CAST(N'2020-06-01T16:23:20.070' AS DateTime), 1, 1, CAST(600.00 AS Decimal(18, 2)), 1, 4)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (5, N'104', CAST(N'2020-06-01T16:36:44.303' AS DateTime), 1, 1, CAST(200.00 AS Decimal(18, 2)), 1, 5)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (6, N'105', CAST(N'2020-06-01T16:43:31.190' AS DateTime), 1, 1, CAST(200.00 AS Decimal(18, 2)), 1, 6)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (7, N'106', CAST(N'2020-06-01T17:00:15.553' AS DateTime), 1, 1, CAST(100.00 AS Decimal(18, 2)), 1, 7)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (8, N'107', CAST(N'2020-06-01T17:06:36.250' AS DateTime), 1, 1, CAST(100.00 AS Decimal(18, 2)), 1, 8)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (9, N'108', CAST(N'2020-06-01T17:14:49.127' AS DateTime), 1, 1, CAST(100.00 AS Decimal(18, 2)), 1, 9)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (10, N'109', CAST(N'2020-06-01T17:33:14.280' AS DateTime), 1, 1, CAST(100.00 AS Decimal(18, 2)), 1, 10)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (11, N'110', CAST(N'2020-06-01T19:25:14.953' AS DateTime), 1, 1, CAST(200.00 AS Decimal(18, 2)), 1, 11)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (12, N'111', CAST(N'2020-06-01T19:27:22.327' AS DateTime), 1, 1, CAST(100.00 AS Decimal(18, 2)), 1, 12)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (13, N'112', CAST(N'2020-06-01T19:28:47.040' AS DateTime), 1, 1, CAST(100.00 AS Decimal(18, 2)), 1, 13)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (14, N'113', CAST(N'2020-06-01T19:31:15.407' AS DateTime), 1, 1, CAST(100.00 AS Decimal(18, 2)), 1, 14)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (15, N'114', CAST(N'2020-06-01T19:33:22.833' AS DateTime), 1, 1, CAST(100.00 AS Decimal(18, 2)), 1, 15)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (16, N'115', CAST(N'2020-06-01T19:36:04.620' AS DateTime), 1, 1, CAST(200.00 AS Decimal(18, 2)), 1, 16)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (17, N'116', CAST(N'2020-06-01T19:44:18.447' AS DateTime), 1, 1, CAST(300.00 AS Decimal(18, 2)), 1, 17)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (18, N'117', CAST(N'2020-06-01T21:37:54.950' AS DateTime), 1, 1, CAST(300.00 AS Decimal(18, 2)), 1, 18)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (19, N'118', CAST(N'2020-06-04T15:44:59.997' AS DateTime), 1, 1, CAST(300.00 AS Decimal(18, 2)), 1, 19)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (20, N'119', CAST(N'2020-06-09T17:27:38.737' AS DateTime), 1, 1, CAST(200.00 AS Decimal(18, 2)), 1, 1)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (21, N'120', CAST(N'2020-06-12T16:18:24.800' AS DateTime), 1, 1, CAST(100.00 AS Decimal(18, 2)), 1, 31)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (22, N'121', CAST(N'2020-06-15T13:25:49.210' AS DateTime), 1, 1, CAST(200.00 AS Decimal(18, 2)), 1, 44)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (23, N'122', CAST(N'2020-06-15T13:35:51.840' AS DateTime), 1, 1, CAST(100.00 AS Decimal(18, 2)), 1, 44)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (24, N'123', CAST(N'2020-06-15T14:00:50.640' AS DateTime), 1, 1, CAST(100.00 AS Decimal(18, 2)), 1, 44)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (25, N'124', CAST(N'2020-06-15T14:03:35.960' AS DateTime), 1, 1, CAST(200.00 AS Decimal(18, 2)), 1, 45)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (26, N'125', CAST(N'2020-06-15T14:07:10.687' AS DateTime), 1, 1, CAST(300.00 AS Decimal(18, 2)), 1, 45)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (27, N'126', CAST(N'2020-06-15T14:21:33.170' AS DateTime), 1, 1, CAST(400.00 AS Decimal(18, 2)), 1, 44)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (28, N'1000', CAST(N'2020-06-16T13:31:01.810' AS DateTime), 2, 3, CAST(30000.00 AS Decimal(18, 2)), 1, 46)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (29, N'1001', CAST(N'2020-06-16T13:46:34.717' AS DateTime), 2, 3, CAST(27000.00 AS Decimal(18, 2)), 1, 46)
GO
INSERT [dbo].[Ventas] ([IdPedido], [NumPedido], [Fecha], [IdEmpresa], [IdUsuario], [Total], [IdStatus], [IdCliente]) VALUES (30, N'1002', CAST(N'2020-06-17T18:21:58.640' AS DateTime), 2, 3, CAST(32000.00 AS Decimal(18, 2)), 1, 46)
GO
SET IDENTITY_INSERT [dbo].[Ventas] OFF
GO
/****** Object:  StoredProcedure [dbo].[obtenerDatosUsuarios]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 26/05/2020
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[obtenerDatosUsuarios]
    @valor varchar(10)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT 
	* from usuarios
    
END
GO
/****** Object:  StoredProcedure [dbo].[SP_AactualizaImagen]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[SP_AactualizaImagen]
	 @ClaveProducto varchar(30),
	 @IdEmpresa varchar(10),
	 @Imagen varchar(50)
	as
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	update Productos set Imagen=@Imagen 	WHERE  ClaveProducto=   @ClaveProducto and  IdEmpresa=@IdEmpresa;

END

GO
/****** Object:  StoredProcedure [dbo].[SP_AactualizaIngreso]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[SP_AactualizaIngreso]
	@usuario varchar(10),
	@Contrasenausuario varchar(10)
	as
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	update Usuarios set fechaultimoingreso=getdate() 	WHERE Usuario=  @usuario and  Contrasenausuario=@Contrasenausuario;

END

GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarClienteIdCliente]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 29/05/2020
-- Description:	<Description,,>
-- =============================================
--exec SP_BuscarClienteIdCliente 1,31
CREATE PROCEDURE [dbo].[SP_BuscarClienteIdCliente]

	@IdCliente int,
	@IdEmpresa int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	SELECT
	Nombre,
	Apellidos,
	IdEstado,
	Calle,
	Noext AS NoExt  ,
	NoInt,
	CodigoPostal,
	Colonia,
	EntreCalles,
	Referencias,
	TelefonoMovil,
	TelefonoFijo,
	Email,
	IdUsuario,
	IdEmpresa

	FROM Clientes where IdEmpresa=@IdEmpresa and IdCliente=@IdCliente 
    

    	
	

	
	
	

	
	
	
	

	
	
	
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarPedido]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 29/05/2020
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_BuscarPedido]

	@IdEmpresa varchar(10),
	@NumPedido varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 --   SELECT *
	--From Productos
	--WHERE IdEmpresa=@IdEmpresa
	--Table 0
	SELECT
	P.IdProducto,
	P.ClaveProducto,
	P.NomProducto AS Nombre,
	P.Descripcion,
	P.Precio,
	VD.CantidadProducto AS Cantidad,
	VD.Subtotal,
	P.Imagen
	FROM VentaDetalle VD
	--LEFT JOIN VentaDetalle PO ON PO.NumPedido = RO.NumPedido
	LEFT JOIN dbo.Productos P ON P.IdProducto = VD.IdProducto
	WHERE VD.IdEmpresa=@IdEmpresa AND VD.NumPedido=@NumPedido
    
	--Table 1
	Select CS.Descripcion
	From Ventas V
	LEFT JOIN CatStatus CS ON V.IdStatus = CS.IdStatus
	WHERE V.IdEmpresa=@IdEmpresa AND V.NumPedido=@NumPedido
END
GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarProducto]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 29/05/2020
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_BuscarProducto]
    @IdProducto varchar(10),
	@IdEmpresa varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT CS.NombreEmpresa,*,CT.Descripcion as categoria
	From Productos
    LEFT JOIN CatCategorias CT ON CT.IdCategoria = Productos.IdCategoria    
	LEFT JOIN CatEmpresa CS ON Productos.IdEmpresa = CS.IdEmpresa
	WHERE Productos.IdProducto=   @IdProducto and  Productos.IdEmpresa=@IdEmpresa
    

	  



END
GO
/****** Object:  StoredProcedure [dbo].[SP_BuscarProductoClave]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 29/05/2020
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_BuscarProductoClave]
    @ClaveProducto varchar(10),
	@IdEmpresa varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT *
	From Productos Pro

	WHERE ClaveProducto=   @ClaveProducto  and  IdEmpresa=@IdEmpresa
    
END
GO
/****** Object:  StoredProcedure [dbo].[SP_IngresoUsuarios]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 26/05/2020
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_IngresoUsuarios]
    @usuario varchar(10),
	@Contrasenausuario varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT 
	U.usuario
	,U.Contrasenausuario
	,U.Idempresa
	,U.IdUsuario
	,CS.NombreEmpresa
	,CS.dirEmpresa
	,CS.telefono
	,CS.email
	,CS.imagen
	,CS.movil
	,CS.Movil2
	,CS.imagen2
	,CS.imagen3
	,U.idRol
	From Usuarios U
	LEFT JOIN CatEmpresa CS ON U.IdEmpresa = CS.IdEmpresa
	WHERE Usuario=  @usuario and  Contrasenausuario=@Contrasenausuario
    
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListaPedidoPorFecha]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 29/05/2020
-- Description:	<Description,,>
-- =============================================
--Exec SP_ListaPedidoPorFecha 1, '2020/06/01','2020/06/11'
--Exec SP_ListaPedidoPorFecha 1, '01/06/2020','10/06/2020'
CREATE PROCEDURE [dbo].[SP_ListaPedidoPorFecha]
    @IdEmpresa int,
	@FechaInicio varchar(16),
	@FechaFin varchar(16)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
     
	SELECT
		V.NumPedido AS NumPedido,
		V.Total AS Total,		
		V.Fecha AS Fecha,
		CS.Descripcion AS Status,
		V.IdCliente AS Idcliente
	FROM Ventas V	
	LEFT JOIN Catstatus CS ON V.IdStatus = CS.IdStatus
	LEFT JOIN Clientes C ON V.IdCliente = C.IdCliente
	WHERE V.Fecha between convert(date,@FechaInicio) and DATEADD(s,-1,DATEADD(d,1,@FechaFin ))and V.IdEmpresa=@IdEmpresa 
    


END
GO
/****** Object:  StoredProcedure [dbo].[SP_ObtenerProductoTabla]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 29/05/2020
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_ObtenerProductoTabla]

	@IdEmpresa varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT IdProducto,CS.NombreEmpresa,NomProducto, ClaveProducto, oferta,Precio,CT.Descripcion as categoria,CTS.subCategoria as Subcategoria
	From Productos
	LEFT JOIN CatEmpresa CS ON Productos.IdEmpresa = CS.IdEmpresa
	LEFT JOIN CatCategorias CT ON CT.IdCategoria = Productos.IdCategoria
	LEFT JOIN CatSubcategorias CTS ON CTS.idSubCategoria = Productos.idSubCategoria


	WHERE Productos.IdEmpresa=@IdEmpresa
    
END
GO
/****** Object:  StoredProcedure [dbo].[SP_OfertaProducto]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 29/05/2020
-- Description:	<Description,,>

-- =============================================
CREATE PROCEDURE [dbo].[SP_OfertaProducto]

	@IdEmpresa varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT CS.NombreEmpresa,*,CT.Descripcion as categoria,CTS.subCategoria as Subcategoria
	From Productos
	LEFT JOIN CatEmpresa CS ON Productos.IdEmpresa = CS.IdEmpresa
	LEFT JOIN CatCategorias CT ON CT.IdCategoria = Productos.IdCategoria
	LEFT JOIN CatSubcategorias CTS ON CTS.idSubCategoria = Productos.idSubCategoria
	WHERE Productos.IdEmpresa=@IdEmpresa and Productos.oferta =1
    
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Producto]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 29/05/2020
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Producto]

	@IdEmpresa varchar(10),
	@idProducto smallint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT CS.NombreEmpresa,*,CT.Descripcion as categoria,CTS.subCategoria as Subcategoria
	From Productos
	LEFT JOIN CatEmpresa CS ON Productos.IdEmpresa = CS.IdEmpresa
	LEFT JOIN CatCategorias CT ON CT.IdCategoria = Productos.IdCategoria
	LEFT JOIN CatSubcategorias CTS ON CTS.idSubCategoria = Productos.idSubCategoria
	WHERE Productos.IdEmpresa=@IdEmpresa and Productos.idproducto=@idProducto
    
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ProductoFiltrado]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 29/05/2020
-- Description:	<Description,,>
-- exec SP_ProductoFiltrado 3,0,0,'a'
-- =============================================
CREATE PROCEDURE [dbo].[SP_ProductoFiltrado]

	@IdEmpresa varchar(10),
	@idCategoria varchar(10),
	@idSubcategoria varchar(10),
	@textoBuscar varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	if(@idCategoria=0 and @idSubcategoria=0 and @textoBuscar<>'0')
	begin
	       Declare @texto varchar(50)
		   set @texto= '%'+ @textoBuscar +'%'
	        SELECT CS.NombreEmpresa,*,CT.Descripcion as categoria,CTS.subCategoria as Subcategoria
			From Productos
			LEFT JOIN CatEmpresa CS ON Productos.IdEmpresa = CS.IdEmpresa
			LEFT JOIN CatCategorias CT ON CT.IdCategoria = Productos.IdCategoria
			LEFT JOIN CatSubcategorias CTS ON CTS.idSubCategoria = Productos.idSubCategoria
			WHERE Productos.IdEmpresa=@IdEmpresa and ( Productos.Descripcion like @texto  or Productos.NomProducto like @texto)

	end
	else
	begin
			SELECT CS.NombreEmpresa,*,CT.Descripcion as categoria,CTS.subCategoria as Subcategoria
			From Productos
			LEFT JOIN CatEmpresa CS ON Productos.IdEmpresa = CS.IdEmpresa
			LEFT JOIN CatCategorias CT ON CT.IdCategoria = Productos.IdCategoria
			LEFT JOIN CatSubcategorias CTS ON CTS.idSubCategoria = Productos.idSubCategoria
			WHERE Productos.IdEmpresa=@IdEmpresa and Productos.IdCategoria= @idCategoria and Productos.idSubcategoria=@idSubcategoria
    end
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ProductoFiltradoTemas]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 29/05/2020
-- Description:	<Description,,>
-- exec SP_ProductoFiltrado 3,0,0,'a'
-- =============================================
CREATE PROCEDURE [dbo].[SP_ProductoFiltradoTemas]

	@IdEmpresa varchar(10),
	@idTema varchar(10),
	@idCategoria varchar(10)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
			SELECT CS.NombreEmpresa,*,CT.Descripcion as categoria,CTS.subCategoria as Subcategoria
			From Productos
			LEFT JOIN CatEmpresa CS ON Productos.IdEmpresa = CS.IdEmpresa
			LEFT JOIN CatCategorias CT ON CT.IdCategoria = Productos.IdCategoria
			LEFT JOIN CatSubcategorias CTS ON CTS.idSubCategoria = Productos.idSubCategoria
			WHERE Productos.IdEmpresa=@IdEmpresa and Productos.idTema=@idTema
   
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ProductoPrueba]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 29/05/2020
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_ProductoPrueba]

@valor int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 SELECT IdProducto,ClaveProducto,nomProducto,Marca,precio,imagen from Productos
    
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Subcategorias]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 14/07/2020
-- Description:	<Description,,>
 --exec SP_Subcategorias 3
-- =============================================
CREATE PROCEDURE [dbo].[SP_Subcategorias]
@IdEmpresa smallint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
   select * from CatCategorias 	WHERE IdEmpresa=@IdEmpresa

    SELECT CT.Descripcion as categoria,CSC.subCategoria,CT.IdCategoria,CSC.idSubCategoria,CSC.imagen
	From CatSubcategorias CSC
		LEFT JOIN CatCategorias CT ON CT.IdCategoria = CSC.IdCategoria
	WHERE CT.IdEmpresa=@IdEmpresa


	SELECT CTSC.Descripcion as temasSubCategoria, CTSC.idsubCategoria
	From catTemaSubCategoria CTSC
		
	WHERE CTSC.IdEmpresa=@IdEmpresa
    
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Subcategorias_MenuIzq]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 14/07/2020
-- Description:	<Description,,>
 --exec SP_Subcategorias_MenuIzq 3,0
-- =============================================
CREATE PROCEDURE [dbo].[SP_Subcategorias_MenuIzq]
@IdEmpresa smallint,
@idCategoria varchar(10)
AS
BEGIN
	

	SELECT CT.Descripcion as categoria, CSC.subCategoria,CSC.idSubCategoria,CT.IdCategoria ,CSC.imagen
	From   CatSubcategorias CSC
		   LEFT JOIN CatCategorias CT ON CT.IdCategoria = CSC.IdCategoria
	WHERE  CT.IdEmpresa=@IdEmpresa and CSC.IdCategoria=@idCategoria
    
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TotalProducto]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 29/05/2020
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_TotalProducto]

	@IdEmpresa varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT CS.NombreEmpresa,*,CT.Descripcion as categoria,CTS.subCategoria as Subcategoria
	From Productos
	LEFT JOIN CatEmpresa CS ON Productos.IdEmpresa = CS.IdEmpresa
	LEFT JOIN CatCategorias CT ON CT.IdCategoria = Productos.IdCategoria
	LEFT JOIN CatSubcategorias CTS ON CTS.idSubCategoria = Productos.idSubCategoria
	WHERE Productos.IdEmpresa=@IdEmpresa ORDER BY NEWID()
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Actualiza_Productos]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 16/06/2020
-- Description:	Insertar pedidos y clientes
-- =============================================
--exec usp_Actualiza_Productos 3,'115','TAZA04','4','2','Taza','PAPA','ROJO','100',1,'T4.jpg','45.00','30.00','1','TAZ04','2','0','4'
CREATE PROCEDURE [dbo].[usp_Actualiza_Productos]
	@IdEmpresa varchar(10),
	@idProducto smallint,
	@NomProducto varchar(30),	     
    @IdCategoria int,
	@IdSubCategoria int,
	@Marca varchar(30),
	@Modelo varchar(30),
	@Descripcion varchar(200),
	@Unidad int,
	@IdProveedor int,
	@Imagen varchar(1500),   
	@Precio decimal(18, 2),       
	@Costo decimal(18, 2),
    @IdTalla int,			
	@ClaveProducto varchar(30),
    @idTema int, 
	@oferta bit,
	@idUsuarioModifica int
			

AS
BEGIN
	
	  
	    update Productos
		 set 

	        NomProducto=@NomProducto,
			IdCategoria=@IdCategoria,
			idSubCategoria=@idSubCategoria,
			Marca=@Marca,
			Modelo=@Modelo,
			Descripcion=@Descripcion,
			Unidad=@Unidad,
			IdProveedor=@IdProveedor,
			Imagen=@Imagen,
			Precio=@Precio,
			Costo=@Costo,
			IdEmpresa=@IdEmpresa,
			IdTalla=@IdTalla,
			ClaveProducto=@ClaveProducto,
			idTema=@idTema,
			oferta=@oferta,
			idUsuarioModifica=@idUsuarioModifica,
			fechaActualizacion=getdate() 
			
		     where Productos.IdEmpresa=@IdEmpresa and Productos.idproducto=@idProducto


	    

  
     
  end

GO
/****** Object:  StoredProcedure [dbo].[usp_Inserta_Clientes_Pedidos]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 31/05/2020
-- Description:	Insertar pedidos y clientes
-- =============================================

CREATE PROCEDURE [dbo].[usp_Inserta_Clientes_Pedidos]
@xmlClientes xml

--@xmlPedidos xml
WITH EXEC AS CALLER
AS
BEGIN
	begin try
	 begin transaction
	   SET NOCOUNT ON;

        insert into Clientes 
		 Select 
         Clientes.value('Nombre[1]', 'varchar(250)')     
        ,Clientes.value('Apellidos[1]', 'varchar(250)')
        ,Clientes.value('IdEstado[1]', 'int')     
        ,Clientes.value('Calle[1]', 'varchar(50)') 
        ,Clientes.value('NoExt[1]', 'varchar(20)')                
        ,Clientes.value('NoInt[1]', 'varchar(20)')
        ,Clientes.value('CodigoPostal[1]', 'varchar(20)')
        ,Clientes.value('Colonia[1]', 'varchar(50)')
        ,Clientes.value('EntreCalles[1]', 'varchar(50)')
        ,Clientes.value('Referencias[1]', 'varchar(50)')
        ,Clientes.value('TelefonoMovil[1]', 'varchar(30)')
		,Clientes.value('TelefonoFijo[1]', 'varchar(30)')
        ,Clientes.value('Email[1]', 'varchar(50)')
        ,Clientes.value('IdUsuario[1]', 'int')    
		,Clientes.value('IdEmpresa[1]', 'int')
       FROM @xmlClientes.nodes('/DatosCliente')Catalog(Clientes)
        commit
		end try
begin catch
		if(@@trancount > 0)      
			begin    
				rollback  transaction
				
		
				DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
				SELECT @ErrMsg = ERROR_MESSAGE(),@ErrSeverity = ERROR_SEVERITY()
				RAISERROR(@ErrMsg, @ErrSeverity, 1)
		end
	end catch
 
  end

GO
/****** Object:  StoredProcedure [dbo].[usp_Inserta_Productos]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 16/06/2020
-- Description:	Insertar pedidos y clientes
-- =============================================

CREATE PROCEDURE [dbo].[usp_Inserta_Productos]
@xmlProducto xml


WITH EXEC AS CALLER
AS
BEGIN
	begin try
	 begin transaction
	   SET NOCOUNT ON;
	  


	   --IF ((Select COUNT(*) from VentaDetalle where idempresa=@IdEmpresa) > 0)
	   --BEGIN

	   --	   Declare @NumPedidoUltimo int=(Select max(NumPedido) from Ventas where IdEmpresa=@IdEmpresa)
	   --    Declare @IdclienteUltimo int=(Select max(IdCliente) from Clientes where IdEmpresa=@IdEmpresa)
		  -- Insert into Ventas (NumPedido,Fecha,IdEmpresa,IdUsuario,Total,IdStatus,IdCliente) values(@NumPedidoUltimo+1,GETDATE(),@IdEmpresa,@IdUsuario,@Total,1,@IdclienteUltimo )
		  -- Declare @NumPedido int=(Select max(NumPedido) from Ventas where IdEmpresa=@IdEmpresa)

	       --      insert into Ventas/Pedidos
			 Insert into  Productos (NomProducto,IdCategoria,idSubCategoria,Marca,Modelo,Descripcion,Unidad,IdProveedor,Imagen,Precio,Costo,IdEmpresa,IdTalla,ClaveProducto,idTema,oferta,idUsuarioModifica,fechaActualizacion)		 
			Select
			 Productos.value('NomProducto[1]', 'varchar(30)')     
			,Productos.value('IdCategoria[1]', 'int')
			,Productos.value('IdSubCategoria[1]', 'int')
			,Productos.value('Marca[1]', 'varchar(30)')  
			,Productos.value('Modelo[1]', 'varchar(30)')  
			,Productos.value('Descripcion[1]', 'varchar(200)')  
			,Productos.value('Unidad[1]', 'int')
			,Productos.value('IdProveedor[1]', 'int') 
			,Productos.value('Imagen[1]', 'varchar(1500)')    
			,Productos.value('Precio[1]', 'decimal(18, 2)')       
			,Productos.value('Costo[1]', 'decimal(18, 2)')
			,Productos.value('IdEmpresa[1]', 'int')   
			,Productos.value('IdTalla[1]', 'int')			
			,Productos.value('ClaveProducto[1]', 'varchar(30)')
			,Productos.value('idTema[1]', 'int')  
			,Productos.value('oferta[1]', 'bit') 
			,Productos.value('idUsuario[1]', 'int')
			,getdate()
			 FROM @xmlProducto.nodes('/Producto')Catalog(Productos)

		--	 Select @NumPedido as NumPedido

	 --  END
	 --  ELSE
	 --   BEGIN
		--  Declare @ValorInicial int=(Select ValorInicialPedido from InicioPedido where idempresa=@IdEmpresa)
		--  Declare @Idcliente int=(Select max(IdCliente) from Clientes where IdEmpresa=@IdEmpresa)
		--  Insert into Ventas (NumPedido,Fecha,IdEmpresa,IdUsuario,Total,IdStatus,IdCliente) values(@ValorInicial,GETDATE(),@IdEmpresa,@IdUsuario,@Total,1,@Idcliente)
		  
	 --      --      insert into Ventas/Pedidos
		--	 Insert into  VentaDetalle (NumPedido,IdProducto,CantidadProducto,Subtotal,IdEmpresa)		 
		--	Select
		--	 @ValorInicial       
		--	,VentaDetalle.value('IdProducto[1]', 'varchar(250)')
		--	,VentaDetalle.value('Cantidad[1]', 'int')     
		--	,VentaDetalle.value('Subtotal[1]', 'decimal(18, 2)')       
		--	,@IdEmpresa 
		--	 FROM @xmlPedidos.nodes('/ArrayOfVenta/Venta')Catalog(VentaDetalle)
			 
		--	  Select  @ValorInicial  as NumPedido

		--END

	    

  
        commit
		end try
begin catch
		if(@@trancount > 0)      
			begin    
				rollback  transaction
				
		
				DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
				SELECT @ErrMsg = ERROR_MESSAGE(),@ErrSeverity = ERROR_SEVERITY()
				RAISERROR(@ErrMsg, @ErrSeverity, 1)
		end
	end catch
 
  end

GO
/****** Object:  StoredProcedure [dbo].[usp_Inserta_Ventas_Pedidos]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 01/06/2020
-- Description:	Insertar pedidos y clientes
-- =============================================

CREATE PROCEDURE [dbo].[usp_Inserta_Ventas_Pedidos]
@xmlPedidos xml,
@IdEmpresa int,
@IdUsuario int,
@Total decimal(18, 2)
--@xmlPedidos xml
WITH EXEC AS CALLER
AS
BEGIN
	begin try
	 begin transaction
	   SET NOCOUNT ON;
	  


	   IF ((Select COUNT(*) from VentaDetalle where idempresa=@IdEmpresa) > 0)
	   BEGIN

	   	   Declare @NumPedidoUltimo int=(Select max(NumPedido) from Ventas where IdEmpresa=@IdEmpresa)
	       Declare @IdclienteUltimo int=(Select max(IdCliente) from Clientes where IdEmpresa=@IdEmpresa)
		   Insert into Ventas (NumPedido,Fecha,IdEmpresa,IdUsuario,Total,IdStatus,IdCliente) values(@NumPedidoUltimo+1,GETDATE(),@IdEmpresa,@IdUsuario,@Total,1,@IdclienteUltimo )
		   Declare @NumPedido int=(Select max(NumPedido) from Ventas where IdEmpresa=@IdEmpresa)

	       --      insert into Ventas/Pedidos
			 Insert into  VentaDetalle (NumPedido,IdProducto,CantidadProducto,Subtotal,IdEmpresa)		 
			Select
			 @NumPedido       
			,VentaDetalle.value('IdProducto[1]', 'varchar(250)')
			,VentaDetalle.value('Cantidad[1]', 'int')     
			,VentaDetalle.value('Subtotal[1]', 'decimal(18, 2)')       
			,@IdEmpresa 
			 FROM @xmlPedidos.nodes('/ArrayOfVenta/Venta')Catalog(VentaDetalle)

			 Select @NumPedido as NumPedido

	   END
	   ELSE
	    BEGIN
		  Declare @ValorInicial int=(Select ValorInicialPedido from InicioPedido where idempresa=@IdEmpresa)
		  Declare @Idcliente int=(Select max(IdCliente) from Clientes where IdEmpresa=@IdEmpresa)
		  Insert into Ventas (NumPedido,Fecha,IdEmpresa,IdUsuario,Total,IdStatus,IdCliente) values(@ValorInicial,GETDATE(),@IdEmpresa,@IdUsuario,@Total,1,@Idcliente)
		  
	       --      insert into Ventas/Pedidos
			 Insert into  VentaDetalle (NumPedido,IdProducto,CantidadProducto,Subtotal,IdEmpresa)		 
			Select
			 @ValorInicial       
			,VentaDetalle.value('IdProducto[1]', 'varchar(250)')
			,VentaDetalle.value('Cantidad[1]', 'int')     
			,VentaDetalle.value('Subtotal[1]', 'decimal(18, 2)')       
			,@IdEmpresa 
			 FROM @xmlPedidos.nodes('/ArrayOfVenta/Venta')Catalog(VentaDetalle)
			 
			  Select  @ValorInicial  as NumPedido

		END

	    

  
        commit
		end try
begin catch
		if(@@trancount > 0)      
			begin    
				rollback  transaction
				
		
				DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
				SELECT @ErrMsg = ERROR_MESSAGE(),@ErrSeverity = ERROR_SEVERITY()
				RAISERROR(@ErrMsg, @ErrSeverity, 1)
		end
	end catch
 
  end

GO
/****** Object:  StoredProcedure [dbo].[usp_Inserta_Ventas_PedidosConIdCliente]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Vicente Gómez Sánchez
-- Create date: 01/06/2020
-- Description:	Insertar pedidos y clientes
-- =============================================

CREATE PROCEDURE [dbo].[usp_Inserta_Ventas_PedidosConIdCliente]
@xmlPedidos xml,
@IdEmpresa int,
@IdUsuario int,
@Total decimal(18, 2),
@IdCliente int
--@xmlPedidos xml
WITH EXEC AS CALLER
AS
BEGIN
	begin try
	 begin transaction
	   SET NOCOUNT ON;
	  


	   IF ((Select COUNT(*) from VentaDetalle where idempresa=@IdEmpresa) > 0)
	   BEGIN

	   	   Declare @NumPedidoUltimo int=(Select max(NumPedido) from Ventas where IdEmpresa=@IdEmpresa)
	      
		   Insert into Ventas (NumPedido,Fecha,IdEmpresa,IdUsuario,Total,IdStatus,IdCliente) values(@NumPedidoUltimo+1,GETDATE(),@IdEmpresa,@IdUsuario,@Total,1,@IdCliente )
		   Declare @NumPedido int=(Select max(NumPedido) from Ventas where IdEmpresa=@IdEmpresa)

	       --      insert into Ventas/Pedidos
			 Insert into  VentaDetalle (NumPedido,IdProducto,CantidadProducto,Subtotal,IdEmpresa)		 
			Select
			 @NumPedido       
			,VentaDetalle.value('IdProducto[1]', 'varchar(250)')
			,VentaDetalle.value('Cantidad[1]', 'int')     
			,VentaDetalle.value('Subtotal[1]', 'decimal(18, 2)')       
			,@IdEmpresa 
			 FROM @xmlPedidos.nodes('/ArrayOfVenta/Venta')Catalog(VentaDetalle)

			 Select @NumPedido as NumPedido

	   END
	   ELSE
	    BEGIN
		  Declare @ValorInicial int=(Select ValorInicialPedido from InicioPedido where idempresa=@IdEmpresa)
		
		  Insert into Ventas (NumPedido,Fecha,IdEmpresa,IdUsuario,Total,IdStatus,IdCliente) values(@ValorInicial,GETDATE(),@IdEmpresa,@IdUsuario,@Total,1,@Idcliente)
		  
	       --      insert into Ventas/Pedidos
			 Insert into  VentaDetalle (NumPedido,IdProducto,CantidadProducto,Subtotal,IdEmpresa)		 
			Select
			 @ValorInicial       
			,VentaDetalle.value('IdProducto[1]', 'varchar(250)')
			,VentaDetalle.value('Cantidad[1]', 'int')     
			,VentaDetalle.value('Subtotal[1]', 'decimal(18, 2)')       
			,@IdEmpresa 
			 FROM @xmlPedidos.nodes('/ArrayOfVenta/Venta')Catalog(VentaDetalle)
			 
			  Select  @ValorInicial  as NumPedido

		END

	    

  
        commit
		end try
begin catch
		if(@@trancount > 0)      
			begin    
				rollback  transaction
				
		
				DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
				SELECT @ErrMsg = ERROR_MESSAGE(),@ErrSeverity = ERROR_SEVERITY()
				RAISERROR(@ErrMsg, @ErrSeverity, 1)
		end
	end catch
 
  end

GO
/****** Object:  StoredProcedure [dbo].[uSP_Productos_ConsultaCatalogos_Cotizacion]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		vgs
-- Create date: 08-07-2020
-- Description:	<Description,,>
 --exec uSP_Productos_ConsultaCatalogos_Cotizacion 0,3 
-- =============================================
CREATE PROCEDURE [dbo].[uSP_Productos_ConsultaCatalogos_Cotizacion]
    
@idSubCategoria int,
@idEmpresa int



AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;
	 
	--tabla 0
    select *, idTamano as id,costo=0,idtipo=0,numCantidad=1, valorInicial=1, valorfinal=1,idImpresion=0 from [dbo].[catTamano] where idSubCategoria=@idSubCategoria
    --tabla 1
	select *, idTipo as id,costo=0,idtipo=0,numCantidad=1, valorInicial=1, valorfinal=1 ,idTamano=0  from [dbo].catTipo where idSubCategoria=@idSubCategoria
	-- --tabla 2
	select *, idCantidad as id, valorInicial=1, valorfinal=1,idTamano=0,idImpresion=0  from [dbo].catCantidad where idSubCategoria=@idSubCategoria
    --   --tabla 3
	select *, idImpresion as id, idtipo=0 ,numCantidad=1, valorInicial=1, valorfinal=1,costo=0  from [dbo].catImpresion where idSubCategoria=@idSubCategoria
	----tabla 4
	select *, idTerminado as id, idtipo=0,numCantidad=1, valorInicial=1, valorfinal=1,idTamano=0,idImpresion=0  from [dbo].catTerminado where idSubCategoria=@idSubCategoria
     --   --tabla 5
    select *, idFolio as id,idtipo=0,numCantidad=1, valorInicial=1, valorfinal=1,idTamano=0 ,idImpresion=0 from [dbo].CatFolio where idSubCategoria=@idSubCategoria
	 --   --tabla 6
    select *, idNoCopias as id,idtipo=0,numCantidad=1, valorInicial=1, valorfinal=1,idTamano=0,idImpresion=0  from [dbo].catNocopias where idSubCategoria=@idSubCategoria
		--   --tabla 7
    select *, idCantidadRango as id,numCantidad=1,idTamano=0,idImpresion=0 from [dbo].catCantidadRango where idSubCategoria=@idSubCategoria
		--   --tabla 8
    select *,idTema as id, numCantidad=1,idTamano=0,idImpresion=0,idtipo=0,costo=0,valorInicial=1, valorfinal=1 from [dbo].catTemas where idEmpresa=@idEmpresa


END;

GO
/****** Object:  StoredProcedure [dbo].[uSp_Productos_Eliminar]    Script Date: 19/01/2023 10:24:42 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: vgs
-- Create date: 17 julio 2020
-- Description:Elimanar vehiculos

-- =============================================
CREATE PROCEDURE [dbo].[uSp_Productos_Eliminar] 
	-- Add the parameters for the stored procedure here
 @id smallint,
 @IdEmpresa smallint,
 @idUsuario smallint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

 
 
--declare @id smallint

--set @id=(Select top 1 id from [dbo].[tblPropietarios] where rfc =@rfc)

			insert into HistorialProductosEliminados
			Select * from productos where IdProducto =@id

			delete from productos where IdProducto=@id

			update  HistorialProductosEliminados set idUsuarioModifica	=@idUsuario,fechaActualizacion=getDate() where IdProducto=@id and IdEmpresa=@IdEmpresa ;

          

            SELECT CS.NombreEmpresa,*,CT.Descripcion as categoria,CTS.subCategoria as Subcategoria
			From Productos
			LEFT JOIN CatEmpresa CS ON Productos.IdEmpresa = CS.IdEmpresa
			LEFT JOIN CatCategorias CT ON CT.IdCategoria = Productos.IdCategoria
			LEFT JOIN CatSubcategorias CTS ON CTS.idSubCategoria = Productos.idSubCategoria
			WHERE Productos.IdEmpresa=@IdEmpresa         

END 
GO
