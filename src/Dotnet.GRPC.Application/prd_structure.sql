USE [CadastroPessoa]
GO
/****** Object:  Table [dbo].[AceiteTermoResponsabilidade]    Script Date: 16/01/2020 16:19:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AceiteTermoResponsabilidade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NULL,
	[TermoResponsabilidadeId] [int] NOT NULL,
	[DocumentoAceito] [bit] NOT NULL,
	[DataAceite] [datetime] NOT NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[FornecedorId] [int] NULL,
 CONSTRAINT [PK_AceiteTermoResponsabilidade] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AreaNegocio]    Script Date: 16/01/2020 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaNegocio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Descricao] [varchar](255) NOT NULL,
	[Status] [bit] NOT NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[JustificativaExclusao] [varchar](255) NULL,
 CONSTRAINT [PK__AreaNego__3214EC0703317E3D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AreaNegocioUnidade]    Script Date: 16/01/2020 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaNegocioUnidade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AreaNegocioId] [int] NOT NULL,
	[UnidadeNegocioId] [int] NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
 CONSTRAINT [PK__UnidadeA__3214EC0708EA5793] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aviso]    Script Date: 16/01/2020 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aviso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Data] [datetime] NOT NULL,
	[Descricao] [varchar](500) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Aviso] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CampoAdmissao]    Script Date: 16/01/2020 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CampoAdmissao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[HtmlId] [varchar](50) NOT NULL,
	[Criacao] [bit] NOT NULL,
	[Edicao] [bit] NOT NULL,
 CONSTRAINT [PK_CampoAdmissao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 16/01/2020 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cargo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Descricao] [varchar](255) NOT NULL,
	[Status] [bit] NOT NULL,
	[TipoFuncionarioId] [int] NOT NULL,
	[FormularioBaseId] [int] NOT NULL,
	[VisaoFranquia] [int] NOT NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[JustificativaExclusao] [varchar](255) NULL,
	[NivelCargo] [int] NOT NULL,
	[cdCargo] [int] NULL,
 CONSTRAINT [PK_Cargo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CargoCampoAdmissao]    Script Date: 16/01/2020 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CargoCampoAdmissao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CargoId] [int] NOT NULL,
	[CampoAdmissaoId] [int] NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[Obrigatorio] [bit] NOT NULL,
 CONSTRAINT [PK_CargoCampoAdmissao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CargoFuncao]    Script Date: 16/01/2020 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CargoFuncao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CargoId] [int] NOT NULL,
	[FuncaoId] [int] NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[Default] [bit] NULL,
	[Adicional] [bit] NULL,
 CONSTRAINT [PK_CargoFuncao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CargoPermissaoMail]    Script Date: 16/01/2020 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CargoPermissaoMail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodigoCP] [varchar](10) NULL,
	[CargoId] [int] NULL,
	[CodigoGrupoContas] [varchar](10) NULL,
 CONSTRAINT [PK_CargoPermissaoMail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP]    Script Date: 16/01/2020 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP](
	[Codigo] [varchar](10) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[CodigoRegional] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPLVFuncionalidadeComponente]    Script Date: 16/01/2020 16:19:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPLVFuncionalidadeComponente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FuncionalidadeId] [int] NOT NULL,
	[ComponenteId] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CPLVFuncionalidadeComponente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CPLVFuncionalidadeUrl]    Script Date: 16/01/2020 16:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CPLVFuncionalidadeUrl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FuncionalidadeId] [int] NOT NULL,
	[Url] [varchar](100) NOT NULL,
 CONSTRAINT [PK_CPLVFuncionalidadeUrl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deficiencia]    Script Date: 16/01/2020 16:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deficiencia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Abreviacao] [varchar](3) NOT NULL,
	[Status] [bit] NOT NULL,
	[DataInativacao] [datetime2](7) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](7) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[DataEdicao] [datetime2](7) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[JustificativaExclusao] [varchar](255) NULL,
 CONSTRAINT [PK_Deficiencia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DemissaoPessoa]    Script Date: 16/01/2020 16:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemissaoPessoa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataDesligamento] [datetime] NOT NULL,
	[UsuarioDemitidoId] [int] NULL,
	[FornecedorDemitidoId] [int] NULL,
	[UsuarioDemissorId] [int] NOT NULL,
	[Justificativa] [nvarchar](max) NOT NULL,
	[MotivoDemissaoId] [int] NOT NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
 CONSTRAINT [PK_DemissaoPessoa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ELMAH_Error]    Script Date: 16/01/2020 16:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ELMAH_Error](
	[ErrorId] [uniqueidentifier] NOT NULL,
	[Application] [nvarchar](60) NOT NULL,
	[Host] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[Source] [nvarchar](60) NOT NULL,
	[Message] [nvarchar](500) NOT NULL,
	[User] [nvarchar](50) NOT NULL,
	[StatusCode] [int] NOT NULL,
	[TimeUtc] [datetime] NOT NULL,
	[Sequence] [int] IDENTITY(1,1) NOT NULL,
	[AllXml] [ntext] NOT NULL,
 CONSTRAINT [PK_ELMAH_Error] PRIMARY KEY NONCLUSTERED 
(
	[ErrorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 16/01/2020 16:19:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empresa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](255) NOT NULL,
	[Codigo] [varchar](50) NOT NULL,
	[CPNJ] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoCivil]    Script Date: 16/01/2020 16:19:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoCivil](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](40) NOT NULL,
	[DataEdicao] [datetime2](2) NOT NULL,
 CONSTRAINT [PK_EstadoCivil] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormularioBase]    Script Date: 16/01/2020 16:19:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormularioBase](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Descricao] [varchar](255) NOT NULL,
	[NomeArquivo] [varchar](100) NOT NULL,
	[Status] [bit] NOT NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
 CONSTRAINT [PK_FormularioBase] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fornecedor]    Script Date: 16/01/2020 16:19:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fornecedor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Empresa] [varchar](255) NOT NULL,
	[CPF] [char](11) NOT NULL,
	[DataNascimento] [datetime2](2) NOT NULL,
	[DataRegistro] [datetime] NOT NULL,
	[DataExpiracao] [datetime2](2) NULL,
	[LoginExtranet] [varchar](255) NULL,
	[TelefonePessoal] [varchar](11) NOT NULL,
	[EmailPessoal] [varchar](100) NOT NULL,
	[Status] [bit] NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[HabilitadoAD] [bit] NULL,
	[PrimeiroAcesso] [bit] NULL,
	[DataAlteracaoSenha] [datetime] NULL,
	[CargoId] [int] NOT NULL,
	[SexoId] [int] NULL,
	[GeneroId] [int] NULL,
	[RacaId] [int] NULL,
	[DeficienciaId] [int] NULL,
 CONSTRAINT [PK__Forneced__3214EC0731B762FC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FornecedorFuncao]    Script Date: 16/01/2020 16:19:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FornecedorFuncao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FornecedorId] [int] NOT NULL,
	[FuncaoId] [int] NOT NULL,
	[CargoId] [int] NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FornecedorFuncaoFuncionalidade]    Script Date: 16/01/2020 16:19:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FornecedorFuncaoFuncionalidade](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FornecedorId] [int] NOT NULL,
	[FuncaoFuncionalidadeId] [int] NOT NULL,
	[DataCriacao] [datetime] NOT NULL,
	[UnidadeNegocioId] [int] NULL,
	[CargoId] [int] NULL,
	[FuncionalidadeId] [int] NULL,
	[Visivel] [bit] NULL,
	[Default] [bit] NULL,
	[Customizado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FornecedorUnidadeNegocio]    Script Date: 16/01/2020 16:19:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FornecedorUnidadeNegocio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FornecedorId] [int] NOT NULL,
	[UnidadeNegocioId] [int] NOT NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Franquia]    Script Date: 16/01/2020 16:19:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Franquia](
	[CodigoCP] [varchar](10) NOT NULL,
	[CNPJ] [bigint] NOT NULL,
	[Codigo] [varchar](20) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[CodigoRegional] [int] NOT NULL,
	[CodigoConsultor] [int] NOT NULL,
	[Cenario] [varchar](50) NULL,
 CONSTRAINT [PK_Franquia] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FranquiaDetalhe]    Script Date: 16/01/2020 16:19:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FranquiaDetalhe](
	[Codigo] [varchar](20) NOT NULL,
	[InscricaoEstadual] [varchar](20) NULL,
	[InscricaoMunicipal] [varchar](20) NULL,
	[RegimeTributacao] [varchar](20) NULL,
	[PadraoArquitetonico] [varchar](100) NULL,
	[TipoEstrutura] [varchar](100) NULL,
	[Classificacao] [varchar](100) NULL,
	[HorarioInicioDiaUtil] [time](7) NULL,
	[HorarioFimDiaUtil] [time](7) NULL,
	[HorarioInicioSabado] [time](7) NULL,
	[HorarioFimSabado] [time](7) NULL,
	[HorarioInicioDomingo] [time](7) NULL,
	[HorarioFimDomigo] [time](7) NULL,
	[HorarioInicioFeriado] [time](7) NULL,
	[HorarioFimFeriado] [time](7) NULL,
	[Logradouro] [varchar](255) NULL,
	[Numero] [int] NULL,
	[Complemento] [varchar](100) NULL,
	[Complemento2] [varchar](100) NULL,
	[Bairro] [varchar](100) NULL,
	[CEP] [varchar](9) NULL,
	[Cidade] [varchar](100) NULL,
	[RamalVSAT] [varchar](10) NULL,
	[Telefone] [varchar](15) NULL,
	[FAX] [varchar](15) NULL,
	[Email] [varchar](100) NULL,
	[UF] [varchar](2) NULL,
	[Latitude] [varchar](50) NULL,
	[Longitude] [varchar](50) NULL,
 CONSTRAINT [PK_FranquiaDetalhe] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FranquiaUnidadeNegocio]    Script Date: 16/01/2020 16:19:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FranquiaUnidadeNegocio](
	[FranquiaCodigo] [varchar](20) NOT NULL,
	[UnidadeNegocioId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funcao]    Script Date: 16/01/2020 16:19:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Descricao] [varchar](255) NOT NULL,
	[Status] [bit] NOT NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[JustificativaExclusao] [varchar](255) NULL,
 CONSTRAINT [PK_Funcao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FuncaoCargo]    Script Date: 16/01/2020 16:19:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FuncaoCargo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FuncaoId] [int] NOT NULL,
	[CargoId] [int] NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[Default] [bit] NULL,
	[Adicional] [bit] NULL,
 CONSTRAINT [PK_FuncaoCargo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FuncaoFuncionalidade]    Script Date: 16/01/2020 16:19:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FuncaoFuncionalidade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FuncaoId] [int] NOT NULL,
	[FuncionalidadeId] [int] NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[ReplicarFuncionalidade] [bit] NOT NULL,
	[Visivel] [bit] NULL,
	[Default] [bit] NULL,
	[Status] [bit] NULL,
	[DataInicio] [datetime2](2) NULL,
	[DataFim] [datetime2](2) NULL,
 CONSTRAINT [PK_FuncaoFuncionalidade_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Funcionalidade]    Script Date: 16/01/2020 16:19:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funcionalidade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SistemaId] [int] NOT NULL,
	[FuncionalidadeIdPai] [int] NULL,
	[Ordem] [int] NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Descricao] [varchar](255) NOT NULL,
	[Status] [bit] NOT NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[JustificativaExclusao] [varchar](255) NULL,
	[CodigoExterno] [int] NULL,
 CONSTRAINT [PK_Funcionalidade] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 16/01/2020 16:19:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Abreviacao] [varchar](3) NOT NULL,
	[Status] [bit] NOT NULL,
	[DataInativacao] [datetime2](7) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](7) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[DataEdicao] [datetime2](7) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[JustificativaExclusao] [varchar](255) NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrauInstrucao]    Script Date: 16/01/2020 16:19:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrauInstrucao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](40) NOT NULL,
	[DataEdicao] [datetime2](2) NOT NULL,
 CONSTRAINT [PK_GrauInstrucao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistoricoSenhas]    Script Date: 16/01/2020 16:19:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistoricoSenhas](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [int] NULL,
	[IdFornecedor] [int] NULL,
	[DataAlteracao] [datetime] NULL,
	[IsValido] [bit] NULL,
	[Senha] [varchar](max) NULL,
 CONSTRAINT [PK_HistoricoSenhas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IntegracaoEnvio]    Script Date: 16/01/2020 16:19:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IntegracaoEnvio](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[DataRecebimento] [datetime2](2) NULL,
	[Status] [int] NOT NULL,
	[Tentativas] [int] NOT NULL,
	[Erro] [varchar](1000) NULL,
	[XmlEnvio] [xml] NULL,
 CONSTRAINT [PK_IntegracaoEnvio] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IntegracaoEnvioFornecedor]    Script Date: 16/01/2020 16:19:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IntegracaoEnvioFornecedor](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FornecedorId] [int] NOT NULL,
	[DataCriacao] [datetime] NOT NULL,
	[DataRecebimento] [datetime] NULL,
	[Status] [int] NOT NULL,
	[Tentativas] [int] NOT NULL,
	[Erro] [varchar](max) NULL,
	[XmlEnvio] [xml] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IntegracaoProcessamento]    Script Date: 16/01/2020 16:19:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IntegracaoProcessamento](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SistemaId] [int] NOT NULL,
	[CPF] [varchar](20) NOT NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[Resultado] [int] NOT NULL,
	[Mensagem] [varchar](1000) NULL,
 CONSTRAINT [PK_IntegracaoProcessamento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Log]    Script Date: 16/01/2020 16:19:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Specie] [varchar](10) NOT NULL,
	[Author] [varchar](30) NOT NULL,
	[Who] [varchar](30) NOT NULL,
	[Where] [varchar](255) NOT NULL,
	[When] [datetime] NOT NULL,
	[What] [text] NOT NULL,
	[MoreDetails] [text] NULL,
 CONSTRAINT [Pk_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogImportador]    Script Date: 16/01/2020 16:19:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogImportador](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Data] [datetime] NOT NULL,
	[Erro] [varchar](max) NULL,
	[Mensagem] [varchar](max) NULL,
	[CPF] [varchar](20) NOT NULL,
	[Sucesso] [bit] NOT NULL,
 CONSTRAINT [PK_LogImportador] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogIntegracaoBUS]    Script Date: 16/01/2020 16:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogIntegracaoBUS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WebService] [varchar](50) NULL,
	[MetodoBUS] [varchar](100) NULL,
	[MetodoAplicacao] [varchar](100) NULL,
	[Codigo] [varchar](100) NULL,
	[Detalhe] [varchar](1000) NULL,
	[Razao] [varchar](100) NULL,
	[Erro] [varchar](1000) NULL,
	[Data] [datetime] NULL,
	[Campos] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogLigaDesligaAcesso]    Script Date: 16/01/2020 16:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogLigaDesligaAcesso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[UsuarioIdResp] [int] NOT NULL,
	[Mensagem] [nvarchar](max) NULL,
	[Log] [nvarchar](max) NULL,
	[Desligou] [bit] NULL,
	[Data] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogPrimeiroAcesso]    Script Date: 16/01/2020 16:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogPrimeiroAcesso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CPF] [varchar](11) NOT NULL,
	[DataNascimento] [datetime] NOT NULL,
	[Data] [datetime] NOT NULL,
	[StackTrace] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_LogPrimeiroAcesso] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogUsuarioFranquiaResponsabilidadeAdministrativa]    Script Date: 16/01/2020 16:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogUsuarioFranquiaResponsabilidadeAdministrativa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CPCodigo] [varchar](max) NULL,
	[FranquiaCodigo] [varchar](max) NULL,
	[UsuarioId] [int] NULL,
	[UnidadeNegocioId] [int] NULL,
	[DataCriacao] [datetime] NOT NULL,
	[Acao] [nvarchar](max) NULL,
	[Mensagem] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MotivoAusencia]    Script Date: 16/01/2020 16:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MotivoAusencia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Motivo] [varchar](255) NOT NULL,
 CONSTRAINT [PK_MotivoAusencia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MotivoDemissao]    Script Date: 16/01/2020 16:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MotivoDemissao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](255) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_MotivoDesligamento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovimentacaoPessoa]    Script Date: 16/01/2020 16:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovimentacaoPessoa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataMovimentacao] [datetime] NOT NULL,
	[UsuarioMovimentadoId] [int] NULL,
	[UsuarioMovimentacaoId] [int] NOT NULL,
	[CargoId] [int] NOT NULL,
	[CargoOldId] [int] NOT NULL,
	[FranquiaCodigo] [varchar](20) NULL,
	[FranquiaOldCodigo] [varchar](20) NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[UnidadeNegocioId] [int] NULL,
 CONSTRAINT [PK_MovimentacaoPessoa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 16/01/2020 16:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Abreviacao] [varchar](3) NOT NULL,
	[Status] [bit] NOT NULL,
	[DataInativacao] [datetime2](7) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](7) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[DataEdicao] [datetime2](7) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[JustificativaExclusao] [varchar](255) NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParametroCampoUsuario]    Script Date: 16/01/2020 16:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParametroCampoUsuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ParametroCamposUsuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParametroEmail]    Script Date: 16/01/2020 16:19:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParametroEmail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CP] [varchar](255) NULL,
	[CargoId] [int] NOT NULL,
	[UnidadeNegocioId] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[JustificativaExclusao] [varchar](255) NULL,
 CONSTRAINT [PK_ParametroEmail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParametroIntegracaoHR]    Script Date: 16/01/2020 16:19:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParametroIntegracaoHR](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CargoHR] [varchar](255) NULL,
	[CargoId] [int] NULL,
 CONSTRAINT [PK_ParametroIntegracaoHR] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParametroLembreteSenha]    Script Date: 16/01/2020 16:19:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParametroLembreteSenha](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ChaveCampo] [varchar](50) NOT NULL,
	[Status] [bit] NOT NULL,
	[DescricaoCampo] [varchar](255) NOT NULL,
	[ChaveEstrangeira] [bit] NOT NULL,
	[Tabela] [varchar](255) NULL,
 CONSTRAINT [PK_ParametroLembreteSenha] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParametroSistema]    Script Date: 16/01/2020 16:19:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParametroSistema](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MatriculaInicio] [bigint] NOT NULL,
	[MatriculaFim] [bigint] NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[IntegracaoHabilitarBusca] [bit] NOT NULL,
	[IntegracaoHabilitarEnvio] [bit] NOT NULL,
	[IntegracaoIntervaloExecucaoBusca] [bigint] NOT NULL,
	[IntegracaoIntervaloExecucaoEnvio] [bigint] NOT NULL,
	[IntegracaoTentativasReenvio] [int] NOT NULL,
	[IntegracaoTipoFuncionario] [int] NOT NULL,
	[IntegracaoUsuarioID] [int] NULL,
	[IntegracaoMotivoDemissao] [int] NULL,
	[IntegracaoJustificativaDemissao] [varchar](1000) NULL,
	[TituloMensagemHome] [varchar](255) NULL,
	[TextoMensagemHome] [varchar](1000) NULL,
	[IntegracaoQuantidadeRegistros] [int] NULL,
	[UsuarioApiImportador] [varchar](50) NULL,
	[SenhaApiImportador] [varchar](50) NULL,
	[Execucao] [datetime] NULL,
	[ProximaExecucao] [datetime] NULL,
	[QtdeDias] [int] NULL,
	[HoraStart] [datetime] NULL,
	[Recorrente] [int] NULL,
	[HabilitaSincronizacaoExtranet] [bit] NULL,
	[EnderecoBD] [nvarchar](max) NULL,
	[HoraStartIntegracaoHR] [datetime] NULL,
	[CargoDefaultIdIntegracaoHR] [int] NULL,
	[PrazoExpiracaoSenha] [int] NULL,
	[ValidarSenha] [bit] NULL,
 CONSTRAINT [PK_ParametroSistema] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParametroSistemaCampoUsuario]    Script Date: 16/01/2020 16:19:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParametroSistemaCampoUsuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SistemaId] [int] NOT NULL,
	[ParametroCampoUsuarioId] [int] NOT NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NOT NULL,
	[UsuarioBrowserCriacao] [varchar](255) NOT NULL,
 CONSTRAINT [PK_ParametroSistemaCampoUsuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParametrosMultiplicador]    Script Date: 16/01/2020 16:19:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParametrosMultiplicador](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CPCodigo] [nvarchar](max) NULL,
	[Descricao] [nvarchar](max) NULL,
	[QtdeDe] [int] NULL,
	[QtdeAte] [int] NULL,
	[QtdeMultiplicador] [int] NULL,
	[DataCriacao] [datetime] NOT NULL,
	[Tipo] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[CargoId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PdvsLinx]    Script Date: 16/01/2020 16:19:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PdvsLinx](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CPCodigo] [varchar](20) NOT NULL,
	[CPNome] [varchar](255) NOT NULL,
	[FranquiaCodigo] [varchar](20) NOT NULL,
	[FranquiaNome] [varchar](255) NOT NULL,
 CONSTRAINT [PK_PdvsLinx] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Raca]    Script Date: 16/01/2020 16:19:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Raca](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Abreviacao] [varchar](3) NOT NULL,
	[Status] [bit] NOT NULL,
	[DataInativacao] [datetime2](7) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](7) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[DataEdicao] [datetime2](7) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[JustificativaExclusao] [varchar](255) NULL,
 CONSTRAINT [PK_Raca] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regional]    Script Date: 16/01/2020 16:19:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regional](
	[CodigoRegional] [int] NOT NULL,
	[Descricao] [varchar](100) NOT NULL,
	[Gerente] [varchar](100) NOT NULL,
	[CPF] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Relatorio]    Script Date: 16/01/2020 16:19:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Relatorio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Descricao] [varchar](255) NOT NULL,
	[RelatorioCategoriaId] [int] NOT NULL,
	[NomeView] [varchar](255) NOT NULL,
	[Status] [bit] NOT NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[JustificativaExclusao] [varchar](255) NULL,
	[QtdLinhasPorPagina] [int] NOT NULL,
 CONSTRAINT [PK__Relatorio__3214EC0703317E3D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RelatorioCategoria]    Script Date: 16/01/2020 16:19:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelatorioCategoria](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](40) NOT NULL,
 CONSTRAINT [PK_RelatorioCategoria] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RelatorioConfiguracao]    Script Date: 16/01/2020 16:19:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelatorioConfiguracao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NomeCampo] [varchar](255) NOT NULL,
	[MostrarEmTela] [bit] NOT NULL,
	[PermitirFiltro] [bit] NOT NULL,
	[Ordem] [int] NULL,
	[RelatorioId] [int] NOT NULL,
 CONSTRAINT [PK_RelatorioConfiguracao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RelatorioVariavel]    Script Date: 16/01/2020 16:19:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelatorioVariavel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RelatorioId] [int] NOT NULL,
	[Parametro] [varchar](255) NOT NULL,
	[Logico] [varchar](3) NOT NULL,
	[Tipo] [varchar](1) NOT NULL,
	[Valor] [varchar](255) NOT NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
 CONSTRAINT [PK__RelatorioVariavel__3214EC0703317E3D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepresentanteLegalAssinatura]    Script Date: 16/01/2020 16:19:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepresentanteLegalAssinatura](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[RepresentanteLegalFuncaoId] [int] NOT NULL,
 CONSTRAINT [PK_RepresentanteLegalAssinatura] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RepresentanteLegalFuncao]    Script Date: 16/01/2020 16:19:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RepresentanteLegalFuncao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
 CONSTRAINT [PK_RepresentanteLegalFuncao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sexo]    Script Date: 16/01/2020 16:19:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sexo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](40) NOT NULL,
	[DataEdicao] [datetime2](2) NOT NULL,
 CONSTRAINT [PK_Sexo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sistema]    Script Date: 16/01/2020 16:19:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sistema](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Descricao] [varchar](255) NOT NULL,
	[Status] [bit] NOT NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[JustificativaExclusao] [varchar](255) NULL,
	[Identificador] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sistema] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SistemaAreaNegocio]    Script Date: 16/01/2020 16:19:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SistemaAreaNegocio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SistemaId] [int] NOT NULL,
	[AreaNegocioId] [int] NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
 CONSTRAINT [PK_SistemaAreaNegocio] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SistemaIntegracao]    Script Date: 16/01/2020 16:19:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SistemaIntegracao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SistemaId] [int] NOT NULL,
	[Marcado] [bit] NOT NULL,
	[BOT] [bit] NULL,
	[QDB] [bit] NULL,
	[EUD] [bit] NULL,
	[TBB] [bit] NULL,
 CONSTRAINT [PK_SistemaIntegracao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_UsuariosAD]    Script Date: 16/01/2020 16:19:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_UsuariosAD](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[dsLogin] [varchar](20) NULL,
	[nrCPF] [varchar](11) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TermoAceiteMultiplicador]    Script Date: 16/01/2020 16:19:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TermoAceiteMultiplicador](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[CargoId] [int] NOT NULL,
	[DataCriacao] [datetime] NOT NULL,
	[Titulo] [nvarchar](max) NOT NULL,
	[Descricao] [nvarchar](max) NOT NULL,
	[Texto] [nvarchar](max) NOT NULL,
	[NomeArquivo] [nvarchar](max) NULL,
	[ContentType] [nvarchar](max) NULL,
	[ContentLength] [int] NULL,
	[Arquivo] [image] NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TermoResponsabilidade]    Script Date: 16/01/2020 16:19:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TermoResponsabilidade](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Descricao] [varchar](255) NOT NULL,
	[Texto] [varchar](max) NOT NULL,
	[Status] [bit] NOT NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[JustificativaExclusao] [varchar](255) NULL,
 CONSTRAINT [PK_TermoResponsabilidade] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TermoResponsabilidadeDoc]    Script Date: 16/01/2020 16:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TermoResponsabilidadeDoc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TermoResponsabilidadeId] [int] NOT NULL,
	[NomeArquivo] [varchar](100) NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[JustificativaExclusao] [varchar](255) NULL,
 CONSTRAINT [PK_TermoResponsabilidadeDoc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoFuncionario]    Script Date: 16/01/2020 16:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoFuncionario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Identificador] [varchar](20) NULL,
	[DataEdicao] [datetime2](2) NOT NULL,
	[Ordem] [int] NULL,
 CONSTRAINT [PK_TipoFuncionario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoLoja]    Script Date: 16/01/2020 16:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoLoja](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Chave] [varchar](50) NOT NULL,
	[TipoEstrutura] [int] NOT NULL,
	[TipoOperacao] [int] NULL,
 CONSTRAINT [TipoLoja_Chave_PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoMovimentacao]    Script Date: 16/01/2020 16:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMovimentacao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Identificador] [varchar](20) NULL,
	[Nome] [varchar](40) NULL,
	[DataAlteracao] [datetime] NOT NULL,
 CONSTRAINT [PK_TipoMovimentacao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TmpCargoVD]    Script Date: 16/01/2020 16:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TmpCargoVD](
	[CargoIdLoja] [int] NOT NULL,
	[CargoIdVD] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TmpImportacaoFranquia]    Script Date: 16/01/2020 16:19:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TmpImportacaoFranquia](
	[CodigoCP] [varchar](10) NOT NULL,
	[CNPJ] [bigint] NOT NULL,
	[Codigo] [varchar](20) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[CodigoRegional] [int] NOT NULL,
	[CodigoConsultor] [int] NOT NULL,
	[Cenario] [varchar](50) NULL,
 CONSTRAINT [PK_TmpImportacaoFranquia] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnidadeNegocio]    Script Date: 16/01/2020 16:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnidadeNegocio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Descricao] [varchar](255) NOT NULL,
	[SufixoEmail] [varchar](255) NOT NULL,
	[DescricaoAD] [varchar](255) NULL,
	[CodigoGrupoContas] [varchar](10) NULL,
	[Identificador] [nvarchar](max) NULL,
	[Status] [bit] NULL,
	[Habilitado] [bit] NULL,
	[Empresa] [varchar](100) NULL,
 CONSTRAINT [PK__UnidadeN__3214EC0703317E3D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 16/01/2020 16:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CPF] [varchar](20) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[LoginExtranet] [varchar](30) NULL,
	[Status] [int] NOT NULL,
	[Matricula] [bigint] NULL,
	[RG] [varchar](20) NULL,
	[RGOrgaoExpedidor] [varchar](50) NULL,
	[DataNascimento] [date] NULL,
	[SexoId] [int] NULL,
	[CargoId] [int] NULL,
	[EstadoCivilId] [int] NULL,
	[GrauInstrucaoId] [int] NULL,
	[Curso] [varchar](255) NULL,
	[TipoFuncionarioId] [int] NULL,
	[Contratado] [bit] NULL,
	[DataAdmissao] [datetime2](2) NULL,
	[DataDemissao] [datetime2](2) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[MatriculaVD] [varchar](20) NULL,
	[CPCodigo] [varchar](10) NULL,
	[CPNome] [varchar](100) NULL,
	[FranquiaCodigo] [varchar](20) NULL,
	[FranquiaNome] [varchar](100) NULL,
	[NomeConjuge] [varchar](100) NULL,
	[CodigoPDV] [int] NULL,
	[Fidelidade] [varchar](30) NULL,
	[FuncionarioTemporario] [bit] NULL,
	[DataFimContrato] [datetime2](2) NULL,
	[DataEntradaSociedade] [datetime2](2) NULL,
	[DataSaidaSociedade] [datetime2](2) NULL,
	[CEP] [varchar](10) NULL,
	[Logradouro] [varchar](60) NULL,
	[LogradouroNr] [bigint] NULL,
	[Complemento] [varchar](70) NULL,
	[Bairro] [varchar](40) NULL,
	[Cidade] [varchar](40) NULL,
	[Estado] [char](2) NULL,
	[Fone] [varchar](20) NULL,
	[FoneCelular] [varchar](20) NULL,
	[Email] [varchar](40) NULL,
	[PrimeiroAcesso] [bit] NOT NULL,
	[DataAlteracaoSenha] [datetime] NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[DataIntegracao] [datetime2](2) NULL,
	[Integrar] [bit] NOT NULL,
	[CaminhoFoto] [varchar](500) NULL,
	[Sucessor] [bit] NULL,
	[HabilitadoAD] [bit] NULL,
	[CEPCorresp] [nvarchar](max) NULL,
	[LogradouroCorresp] [nvarchar](max) NULL,
	[NumeroCorresp] [nvarchar](max) NULL,
	[ComplementoCorresp] [nvarchar](max) NULL,
	[BairroCorresp] [nvarchar](max) NULL,
	[CidadeCorresp] [nvarchar](max) NULL,
	[EstadoCorresp] [nvarchar](max) NULL,
	[Internacional] [bit] NULL,
	[CodigoAcesso] [varchar](10) NULL,
	[PaisId] [int] NULL,
	[GeneroId] [int] NULL,
	[RacaId] [int] NULL,
	[DeficienciaId] [int] NULL,
	[DataRegistro] [datetime] NULL,
	[EmailPessoal] [varchar](100) NULL,
	[TelefonePessoal] [varchar](30) NULL,
	[DataExpiracao] [datetime] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioAuxiliar]    Script Date: 16/01/2020 16:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioAuxiliar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CPF] [varchar](20) NOT NULL,
	[Nome] [varchar](100) NULL,
	[LoginExtranet] [varchar](30) NULL,
	[Status] [int] NULL,
	[Matricula] [bigint] NULL,
	[RG] [varchar](20) NULL,
	[RGOrgaoExpedidor] [varchar](50) NULL,
	[DataNascimento] [date] NULL,
	[SexoId] [int] NULL,
	[CargoId] [int] NULL,
	[EstadoCivilId] [int] NULL,
	[GrauInstrucaoId] [int] NULL,
	[Curso] [varchar](255) NULL,
	[TipoFuncionarioId] [int] NULL,
	[Contratado] [bit] NULL,
	[DataAdmissao] [datetime2](2) NULL,
	[DataDemissao] [datetime2](2) NULL,
	[DataCriacao] [datetime2](2) NULL,
	[UsuarioIdCriacao] [int] NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[MatriculaVD] [varchar](20) NULL,
	[CPCodigo] [varchar](10) NULL,
	[CPNome] [varchar](100) NULL,
	[FranquiaCodigo] [varchar](20) NULL,
	[FranquiaNome] [varchar](100) NULL,
	[NomeConjuge] [varchar](100) NULL,
	[CodigoPDV] [int] NULL,
	[Fidelidade] [varchar](30) NULL,
	[FuncionarioTemporario] [bit] NULL,
	[DataFimContrato] [datetime2](2) NULL,
	[DataEntradaSociedade] [datetime2](2) NULL,
	[DataSaidaSociedade] [datetime2](2) NULL,
	[CEP] [varchar](10) NULL,
	[Logradouro] [varchar](60) NULL,
	[LogradouroNr] [bigint] NULL,
	[Complemento] [varchar](70) NULL,
	[Bairro] [varchar](40) NULL,
	[Cidade] [varchar](40) NULL,
	[Estado] [char](2) NULL,
	[Fone] [varchar](20) NULL,
	[FoneCelular] [varchar](20) NULL,
	[Email] [varchar](40) NULL,
	[PrimeiroAcesso] [bit] NULL,
	[DataAlteracaoSenha] [datetime] NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[DataIntegracao] [datetime2](2) NULL,
	[Integrar] [bit] NOT NULL,
	[CaminhoFoto] [varchar](500) NULL,
	[Sucessor] [bit] NULL,
	[HabilitadoAD] [bit] NULL,
	[CEPCorresp] [nvarchar](max) NULL,
	[LogradouroCorresp] [nvarchar](max) NULL,
	[NumeroCorresp] [nvarchar](max) NULL,
	[ComplementoCorresp] [nvarchar](max) NULL,
	[BairroCorresp] [nvarchar](max) NULL,
	[CidadeCorresp] [nvarchar](max) NULL,
	[EstadoCorresp] [nvarchar](max) NULL,
	[TipoOperacao] [int] NOT NULL,
	[FuncaoId] [int] NULL,
	[Syncronizado] [bit] NOT NULL,
	[DataSyncronizacao] [datetime] NULL,
	[Internacional] [bit] NULL,
	[CodigoAcesso] [varchar](10) NULL,
	[PaisId] [int] NULL,
	[GeneroId] [int] NULL,
	[RacaId] [int] NULL,
	[DeficienciaId] [int] NULL,
	[DataRegistro] [datetime] NULL,
	[EmailPessoal] [varchar](100) NULL,
	[TelefonePessoal] [varchar](30) NULL,
	[DataExpiracao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioConsultaFiltro]    Script Date: 16/01/2020 16:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioConsultaFiltro](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[NomeFiltro] [varchar](100) NOT NULL,
	[Funcionario] [varchar](10) NULL,
	[Nome] [varchar](100) NULL,
	[CPF] [varchar](14) NULL,
	[Status] [varchar](10) NULL,
	[GerenciaRegional] [varchar](10) NULL,
	[ConsultorComercial] [varchar](100) NULL,
	[CP] [varchar](255) NULL,
	[Franquia] [varchar](255) NULL,
	[CargosId] [varchar](255) NULL,
	[FuncoesId] [varchar](255) NULL,
	[DataAdmissaoInicio] [varchar](10) NULL,
	[DataAdmissaoFim] [varchar](10) NULL,
	[DataDemissaoInicio] [varchar](10) NULL,
	[DataDemissaoFim] [varchar](10) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
 CONSTRAINT [PK_UsuarioConsultaFiltro] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioFranquiaAtuacaoSistema]    Script Date: 16/01/2020 16:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioFranquiaAtuacaoSistema](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[FranquiaCodigo] [varchar](20) NOT NULL,
	[HoraInicial] [time](0) NULL,
	[HoraFinal] [time](0) NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[DataIntegracao] [datetime2](2) NULL,
	[UnidadeNegocioId] [int] NULL,
 CONSTRAINT [PK_UsuarioFranquiaAtuacao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioFranquiaResponsabilidadeAdministrativa]    Script Date: 16/01/2020 16:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioFranquiaResponsabilidadeAdministrativa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[FranquiaCodigo] [varchar](20) NOT NULL,
	[DataInicio] [date] NULL,
	[DataFim] [date] NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[DataIntegracao] [datetime2](2) NULL,
	[UnidadeNegocioId] [int] NULL,
 CONSTRAINT [PK_UsuarioFranquiaResponsabilidadeAdministrativa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioFranquiaResponsabilidadeLegal]    Script Date: 16/01/2020 16:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioFranquiaResponsabilidadeLegal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[FranquiaCodigo] [varchar](20) NOT NULL,
	[DataInicio] [date] NOT NULL,
	[DataFim] [date] NOT NULL,
	[AssinaturaId] [int] NOT NULL,
	[Cotas] [float] NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[DataIntegracao] [datetime2](2) NULL,
 CONSTRAINT [PK_UsuarioFranquiaRepresentanteLegal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioFuncao]    Script Date: 16/01/2020 16:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioFuncao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[FuncaoId] [int] NOT NULL,
	[CargoId] [int] NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioFuncao_Copy]    Script Date: 16/01/2020 16:19:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioFuncao_Copy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[FuncaoId] [int] NOT NULL,
	[CargoId] [int] NOT NULL,
	[Status] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioFuncaoFuncionalidade]    Script Date: 16/01/2020 16:19:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioFuncaoFuncionalidade](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[FuncaoFuncionalidadeId] [int] NOT NULL,
	[UsuarioIdEdicao] [int] NULL,
	[DataEdicao] [datetime2](2) NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
	[DataIntegracao] [datetime2](2) NULL,
	[UnidadeNegocioId] [int] NULL,
	[CargoId] [int] NULL,
	[FuncionalidadeId] [int] NULL,
	[Visivel] [bit] NULL,
	[Default] [bit] NULL,
	[Customizado] [bit] NULL,
 CONSTRAINT [PK_UsuarioFuncionalidade] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioHistoricoAusencia]    Script Date: 16/01/2020 16:19:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioHistoricoAusencia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[DataInicio] [datetime2](2) NOT NULL,
	[DataFim] [datetime2](2) NOT NULL,
	[MotivoAusenciaId] [int] NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
 CONSTRAINT [PK_UsuarioHistoricoAusencia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioImportador]    Script Date: 16/01/2020 16:19:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioImportador](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
 CONSTRAINT [UsuarioImportador_Id_PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioMovimentacao]    Script Date: 16/01/2020 16:19:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioMovimentacao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[nrMatricula] [bigint] NOT NULL,
	[cdFranquia] [varchar](20) NOT NULL,
	[cdCorporativo] [int] NOT NULL,
	[TipoMovimentacaoId] [int] NOT NULL,
	[CargoId] [int] NOT NULL,
	[DtMovimentacao] [datetime] NOT NULL,
	[Motivo] [varchar](1000) NULL,
	[Justificativa] [varchar](1000) NULL,
	[DtAlteracao] [datetime] NOT NULL,
 CONSTRAINT [PK_UsuarioMovimentacao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioMultiplicador]    Script Date: 16/01/2020 16:19:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioMultiplicador](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[CargoId] [int] NOT NULL,
	[CargoIdOld] [int] NOT NULL,
	[FranquiaCodigo] [nvarchar](max) NULL,
	[FranquiaCodigoOld] [nvarchar](max) NULL,
	[DataCriacao] [datetime] NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[TermoAceiteMultiplicadorId] [int] NULL,
	[UsuarioIdAprovador] [int] NULL,
	[DataAprovacao] [datetime] NULL,
	[VacinaLegal] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioUnidadeNegocio]    Script Date: 16/01/2020 16:19:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioUnidadeNegocio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[UnidadeNegocioId] [int] NOT NULL,
	[DataEdicao] [datetime2](2) NULL,
	[UsuarioIdEdicao] [int] NULL,
	[DataInativacao] [datetime2](2) NULL,
	[UsuarioIdInativacao] [int] NULL,
	[JustificativaInativacao] [varchar](255) NULL,
	[UsuarioIPInativacao] [varchar](20) NULL,
	[UsuarioBrowserInativacao] [varchar](255) NULL,
	[DataCriacao] [datetime2](2) NOT NULL,
	[UsuarioIdCriacao] [int] NOT NULL,
	[UsuarioIPCriacao] [varchar](20) NULL,
	[UsuarioBrowserCriacao] [varchar](255) NULL,
	[UsuarioIPEdicao] [varchar](20) NULL,
	[UsuarioBrowserEdicao] [varchar](255) NULL,
 CONSTRAINT [PK_UsuarioUnidadeNegocio] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AceiteTermoResponsabilidade] ADD  CONSTRAINT [DF_AceiteTermoResponsabilidade_DataCriacao]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[AceiteTermoResponsabilidade] ADD  CONSTRAINT [DF_AceiteTermoResponsabilidade_UsuarioIdCriacao]  DEFAULT ((1)) FOR [UsuarioIdCriacao]
GO
ALTER TABLE [dbo].[AreaNegocio] ADD  CONSTRAINT [DF_AreaNegocio_Nome]  DEFAULT ('') FOR [Nome]
GO
ALTER TABLE [dbo].[AreaNegocio] ADD  CONSTRAINT [DF_AreaNegocio_JustificativaInativacao]  DEFAULT ('') FOR [JustificativaInativacao]
GO
ALTER TABLE [dbo].[AreaNegocioUnidade] ADD  CONSTRAINT [DF_AreaNegocioUnidade_UsuarioIdEdicao]  DEFAULT ((1)) FOR [UsuarioIdEdicao]
GO
ALTER TABLE [dbo].[AreaNegocioUnidade] ADD  CONSTRAINT [DF_AreaNegocioUnidade_DataCriacao]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[AreaNegocioUnidade] ADD  CONSTRAINT [DF_AreaNegocioUnidade_UsuarioIdCriacao]  DEFAULT ((1)) FOR [UsuarioIdCriacao]
GO
ALTER TABLE [dbo].[CampoAdmissao] ADD  CONSTRAINT [DF_CampoAdmissao_Criacao]  DEFAULT ((0)) FOR [Criacao]
GO
ALTER TABLE [dbo].[CampoAdmissao] ADD  CONSTRAINT [DF_CampoAdmissao_Edicao]  DEFAULT ((0)) FOR [Edicao]
GO
ALTER TABLE [dbo].[CargoCampoAdmissao] ADD  CONSTRAINT [DF_CargoCampoAdmissao_DataCriacao]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[CargoCampoAdmissao] ADD  CONSTRAINT [DF_CargoCampoAdmissao_UsuarioIdCriacao]  DEFAULT ((1)) FOR [UsuarioIdCriacao]
GO
ALTER TABLE [dbo].[CargoFuncao] ADD  CONSTRAINT [DF_CargoFuncao_DataCriacao]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[CargoFuncao] ADD  CONSTRAINT [DF_CargoFuncao_UsuarioIdCriacao]  DEFAULT ((1)) FOR [UsuarioIdCriacao]
GO
ALTER TABLE [dbo].[DemissaoPessoa] ADD  CONSTRAINT [DF_DemissaoPessoa_DataCriacao]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[DemissaoPessoa] ADD  CONSTRAINT [DF_DemissaoPessoa_UsuarioIdCriacao]  DEFAULT ((1)) FOR [UsuarioIdCriacao]
GO
ALTER TABLE [dbo].[ELMAH_Error] ADD  CONSTRAINT [DF_ELMAH_Error_ErrorId]  DEFAULT (newid()) FOR [ErrorId]
GO
ALTER TABLE [dbo].[Empresa] ADD  DEFAULT ('') FOR [CPNJ]
GO
ALTER TABLE [dbo].[Fornecedor] ADD  CONSTRAINT [DF__Fornecedo__Statu__3493CFA7]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Fornecedor] ADD  CONSTRAINT [DF_Fornecedor_DataCriacao]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[Fornecedor] ADD  DEFAULT ((90000065)) FOR [CargoId]
GO
ALTER TABLE [dbo].[Franquia] ADD  CONSTRAINT [DF_Franquia_CodigoRegional]  DEFAULT ((107)) FOR [CodigoRegional]
GO
ALTER TABLE [dbo].[FuncaoCargo] ADD  CONSTRAINT [DF_FuncaoCargo_DataCriacao]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[FuncaoCargo] ADD  CONSTRAINT [DF_FuncaoCargo_UsuarioIdCriacao]  DEFAULT ((1)) FOR [UsuarioIdCriacao]
GO
ALTER TABLE [dbo].[FuncaoFuncionalidade] ADD  CONSTRAINT [DF_FuncaoFuncionalidade_DataCriacao]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[FuncaoFuncionalidade] ADD  CONSTRAINT [DF_FuncaoFuncionalidade_UsuarioIdCriacao]  DEFAULT ((1)) FOR [UsuarioIdCriacao]
GO
ALTER TABLE [dbo].[Log] ADD  DEFAULT ('ERROR') FOR [Specie]
GO
ALTER TABLE [dbo].[Log] ADD  DEFAULT ('CPLV') FOR [Author]
GO
ALTER TABLE [dbo].[LogPrimeiroAcesso] ADD  DEFAULT (getdate()) FOR [Data]
GO
ALTER TABLE [dbo].[MovimentacaoPessoa] ADD  CONSTRAINT [DF_MovimentacaoPessoa_DataCriacao]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[MovimentacaoPessoa] ADD  CONSTRAINT [DF_MovimentacaoPessoa_UsuarioIdCriacao]  DEFAULT ((1)) FOR [UsuarioIdCriacao]
GO
ALTER TABLE [dbo].[ParametroLembreteSenha] ADD  CONSTRAINT [DF_ParametroLembreteSenha_ChaveEstrangeira]  DEFAULT ((0)) FOR [ChaveEstrangeira]
GO
ALTER TABLE [dbo].[ParametroSistema] ADD  CONSTRAINT [DF_ParametroSistema_DataCriacao]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[ParametroSistema] ADD  CONSTRAINT [DF_ParametroSistema_UsuarioIdCriacao]  DEFAULT ((1)) FOR [UsuarioIdCriacao]
GO
ALTER TABLE [dbo].[Relatorio] ADD  CONSTRAINT [DF_Relatorio_View]  DEFAULT ('') FOR [NomeView]
GO
ALTER TABLE [dbo].[Relatorio] ADD  CONSTRAINT [DF_Relatorio_DataCriacao]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[Relatorio] ADD  CONSTRAINT [DF_Relatorio_UsuarioIdCriacao]  DEFAULT ((1)) FOR [UsuarioIdCriacao]
GO
ALTER TABLE [dbo].[RelatorioVariavel] ADD  CONSTRAINT [DF_RelatorioVariavel_Valor]  DEFAULT ('') FOR [Valor]
GO
ALTER TABLE [dbo].[RelatorioVariavel] ADD  CONSTRAINT [DF_RelatorioVariavel_DataCriacao]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[RelatorioVariavel] ADD  CONSTRAINT [DF_RelatorioVariavel_UsuarioIdCriacao]  DEFAULT ((1)) FOR [UsuarioIdCriacao]
GO
ALTER TABLE [dbo].[SistemaAreaNegocio] ADD  CONSTRAINT [DF_SistemaAreaNegocio_DataCriacao]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[SistemaAreaNegocio] ADD  CONSTRAINT [DF_SistemaAreaNegocio_UsuarioIdCriacao]  DEFAULT ((1)) FOR [UsuarioIdCriacao]
GO
ALTER TABLE [dbo].[TermoResponsabilidadeDoc] ADD  CONSTRAINT [DF_TermoResponsabilidadeDoc_DataCriacao]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[TermoResponsabilidadeDoc] ADD  CONSTRAINT [DF_TermoResponsabilidadeDoc_UsuarioIdCriacao]  DEFAULT ((1)) FOR [UsuarioIdCriacao]
GO
ALTER TABLE [dbo].[TipoFuncionario] ADD  CONSTRAINT [DF_TipoFuncionario_DataAlteracao]  DEFAULT (getdate()) FOR [DataEdicao]
GO
ALTER TABLE [dbo].[TmpImportacaoFranquia] ADD  CONSTRAINT [DF_TmpImportacaoFranquia_CodigoRegional]  DEFAULT ((107)) FOR [CodigoRegional]
GO
ALTER TABLE [dbo].[UnidadeNegocio] ADD  DEFAULT ('') FOR [SufixoEmail]
GO
ALTER TABLE [dbo].[Usuario] ADD  CONSTRAINT [DF__Usuario__DtCadas__5B0E7E4A]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[Usuario] ADD  CONSTRAINT [DF__Usuario__DtAlter__5C02A283]  DEFAULT (getdate()) FOR [DataEdicao]
GO
ALTER TABLE [dbo].[Usuario] ADD  CONSTRAINT [DF__Usuario__Primeir__4FF1D159]  DEFAULT ((1)) FOR [PrimeiroAcesso]
GO
ALTER TABLE [dbo].[UsuarioFranquiaAtuacaoSistema] ADD  CONSTRAINT [DF_UsuarioFranquiaAtuacaoSistema_DataCriacao]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[UsuarioFranquiaAtuacaoSistema] ADD  CONSTRAINT [DF_UsuarioFranquiaAtuacaoSistema_UsuarioIdCriacao]  DEFAULT ((1)) FOR [UsuarioIdCriacao]
GO
ALTER TABLE [dbo].[UsuarioFranquiaResponsabilidadeAdministrativa] ADD  CONSTRAINT [DF_UsuarioFranquiaResponsabilidadeAdministrativa_DataCriacao]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[UsuarioFranquiaResponsabilidadeAdministrativa] ADD  CONSTRAINT [DF_UsuarioFranquiaResponsabilidadeAdministrativa_UsuarioIdCriacao]  DEFAULT ((1)) FOR [UsuarioIdCriacao]
GO
ALTER TABLE [dbo].[UsuarioFranquiaResponsabilidadeLegal] ADD  CONSTRAINT [DF_UsuarioFranquiaResponsabilidadeLegal_DataCriacao]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[UsuarioFranquiaResponsabilidadeLegal] ADD  CONSTRAINT [DF_UsuarioFranquiaResponsabilidadeLegal_UsuarioIdCriacao]  DEFAULT ((1)) FOR [UsuarioIdCriacao]
GO
ALTER TABLE [dbo].[UsuarioFuncaoFuncionalidade] ADD  CONSTRAINT [DF_UsuarioFuncaoFuncionalidade_DataCriacao]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[UsuarioFuncaoFuncionalidade] ADD  CONSTRAINT [DF_UsuarioFuncaoFuncionalidade_UsuarioIdCriacao]  DEFAULT ((1)) FOR [UsuarioIdCriacao]
GO
ALTER TABLE [dbo].[UsuarioHistoricoAusencia] ADD  CONSTRAINT [DF_UsuarioHistoricoAusencia_DataCriacao]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[UsuarioHistoricoAusencia] ADD  CONSTRAINT [DF_UsuarioHistoricoAusencia_UsuarioIdCriacao]  DEFAULT ((1)) FOR [UsuarioIdCriacao]
GO
ALTER TABLE [dbo].[UsuarioMultiplicador] ADD  DEFAULT ((0)) FOR [VacinaLegal]
GO
ALTER TABLE [dbo].[UsuarioUnidadeNegocio] ADD  CONSTRAINT [DF_UsuarioUnidadeNegocio_DataCriacao]  DEFAULT (getdate()) FOR [DataCriacao]
GO
ALTER TABLE [dbo].[UsuarioUnidadeNegocio] ADD  CONSTRAINT [DF_UsuarioUnidadeNegocio_UsuarioIdCriacao]  DEFAULT ((1)) FOR [UsuarioIdCriacao]
GO
ALTER TABLE [dbo].[AceiteTermoResponsabilidade]  WITH CHECK ADD  CONSTRAINT [FK_AceiteTermoResponsabilidade_Fornecedor] FOREIGN KEY([FornecedorId])
REFERENCES [dbo].[Fornecedor] ([Id])
GO
ALTER TABLE [dbo].[AceiteTermoResponsabilidade] CHECK CONSTRAINT [FK_AceiteTermoResponsabilidade_Fornecedor]
GO
ALTER TABLE [dbo].[AceiteTermoResponsabilidade]  WITH CHECK ADD  CONSTRAINT [FK_AceiteTermoResponsabilidade_TermoResponsabilidadeDoc] FOREIGN KEY([TermoResponsabilidadeId])
REFERENCES [dbo].[TermoResponsabilidade] ([Id])
GO
ALTER TABLE [dbo].[AceiteTermoResponsabilidade] CHECK CONSTRAINT [FK_AceiteTermoResponsabilidade_TermoResponsabilidadeDoc]
GO
ALTER TABLE [dbo].[AceiteTermoResponsabilidade]  WITH CHECK ADD  CONSTRAINT [FK_AceiteTermoResponsabilidade_Usuario] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[AceiteTermoResponsabilidade] CHECK CONSTRAINT [FK_AceiteTermoResponsabilidade_Usuario]
GO
ALTER TABLE [dbo].[AreaNegocio]  WITH CHECK ADD  CONSTRAINT [FK_AreaNegocio_UsuarioCriacao] FOREIGN KEY([UsuarioIdCriacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[AreaNegocio] CHECK CONSTRAINT [FK_AreaNegocio_UsuarioCriacao]
GO
ALTER TABLE [dbo].[AreaNegocio]  WITH CHECK ADD  CONSTRAINT [FK_AreaNegocio_UsuarioEdicao] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[AreaNegocio] CHECK CONSTRAINT [FK_AreaNegocio_UsuarioEdicao]
GO
ALTER TABLE [dbo].[AreaNegocio]  WITH CHECK ADD  CONSTRAINT [FK_AreaNegocio_UsuarioInativacao] FOREIGN KEY([UsuarioIdInativacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[AreaNegocio] CHECK CONSTRAINT [FK_AreaNegocio_UsuarioInativacao]
GO
ALTER TABLE [dbo].[AreaNegocioUnidade]  WITH CHECK ADD  CONSTRAINT [FK_AreaNegocioUnidade_AreaNegocio] FOREIGN KEY([AreaNegocioId])
REFERENCES [dbo].[AreaNegocio] ([Id])
GO
ALTER TABLE [dbo].[AreaNegocioUnidade] CHECK CONSTRAINT [FK_AreaNegocioUnidade_AreaNegocio]
GO
ALTER TABLE [dbo].[AreaNegocioUnidade]  WITH CHECK ADD  CONSTRAINT [FK_AreaNegocioUnidade_UnidadeNegocio] FOREIGN KEY([UnidadeNegocioId])
REFERENCES [dbo].[UnidadeNegocio] ([Id])
GO
ALTER TABLE [dbo].[AreaNegocioUnidade] CHECK CONSTRAINT [FK_AreaNegocioUnidade_UnidadeNegocio]
GO
ALTER TABLE [dbo].[AreaNegocioUnidade]  WITH CHECK ADD  CONSTRAINT [FK_AreaNegocioUnidade_Usuario] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[AreaNegocioUnidade] CHECK CONSTRAINT [FK_AreaNegocioUnidade_Usuario]
GO
ALTER TABLE [dbo].[Cargo]  WITH CHECK ADD  CONSTRAINT [FK_Cargo_TipoFuncionario] FOREIGN KEY([TipoFuncionarioId])
REFERENCES [dbo].[TipoFuncionario] ([Id])
GO
ALTER TABLE [dbo].[Cargo] CHECK CONSTRAINT [FK_Cargo_TipoFuncionario]
GO
ALTER TABLE [dbo].[Cargo]  WITH CHECK ADD  CONSTRAINT [FK_Cargo_UsuarioCriacao] FOREIGN KEY([UsuarioIdCriacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Cargo] CHECK CONSTRAINT [FK_Cargo_UsuarioCriacao]
GO
ALTER TABLE [dbo].[Cargo]  WITH CHECK ADD  CONSTRAINT [FK_Cargo_UsuarioEdicao] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Cargo] CHECK CONSTRAINT [FK_Cargo_UsuarioEdicao]
GO
ALTER TABLE [dbo].[Cargo]  WITH CHECK ADD  CONSTRAINT [FK_Cargo_UsuarioInativacao] FOREIGN KEY([UsuarioIdInativacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Cargo] CHECK CONSTRAINT [FK_Cargo_UsuarioInativacao]
GO
ALTER TABLE [dbo].[CargoCampoAdmissao]  WITH CHECK ADD  CONSTRAINT [FK_CargoCampoAdmissao_CampoAdmissao] FOREIGN KEY([CampoAdmissaoId])
REFERENCES [dbo].[CampoAdmissao] ([Id])
GO
ALTER TABLE [dbo].[CargoCampoAdmissao] CHECK CONSTRAINT [FK_CargoCampoAdmissao_CampoAdmissao]
GO
ALTER TABLE [dbo].[CargoCampoAdmissao]  WITH CHECK ADD  CONSTRAINT [FK_CargoCampoAdmissao_Cargo] FOREIGN KEY([CargoId])
REFERENCES [dbo].[Cargo] ([Id])
GO
ALTER TABLE [dbo].[CargoCampoAdmissao] CHECK CONSTRAINT [FK_CargoCampoAdmissao_Cargo]
GO
ALTER TABLE [dbo].[CargoCampoAdmissao]  WITH CHECK ADD  CONSTRAINT [FK_CargoCampoAdmissao_UsuarioEdicao] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[CargoCampoAdmissao] CHECK CONSTRAINT [FK_CargoCampoAdmissao_UsuarioEdicao]
GO
ALTER TABLE [dbo].[CargoFuncao]  WITH CHECK ADD  CONSTRAINT [FK_CargoFuncao_Cargo] FOREIGN KEY([CargoId])
REFERENCES [dbo].[Cargo] ([Id])
GO
ALTER TABLE [dbo].[CargoFuncao] CHECK CONSTRAINT [FK_CargoFuncao_Cargo]
GO
ALTER TABLE [dbo].[CargoFuncao]  WITH CHECK ADD  CONSTRAINT [FK_CargoFuncao_Funcao] FOREIGN KEY([FuncaoId])
REFERENCES [dbo].[Funcao] ([Id])
GO
ALTER TABLE [dbo].[CargoFuncao] CHECK CONSTRAINT [FK_CargoFuncao_Funcao]
GO
ALTER TABLE [dbo].[CargoFuncao]  WITH CHECK ADD  CONSTRAINT [FK_CargoFuncao_Usuario] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[CargoFuncao] CHECK CONSTRAINT [FK_CargoFuncao_Usuario]
GO
ALTER TABLE [dbo].[Deficiencia]  WITH CHECK ADD  CONSTRAINT [FK_Deficiencia_UsuarioCriacao] FOREIGN KEY([UsuarioIdCriacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Deficiencia] CHECK CONSTRAINT [FK_Deficiencia_UsuarioCriacao]
GO
ALTER TABLE [dbo].[Deficiencia]  WITH CHECK ADD  CONSTRAINT [FK_Deficiencia_UsuarioEdicao] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Deficiencia] CHECK CONSTRAINT [FK_Deficiencia_UsuarioEdicao]
GO
ALTER TABLE [dbo].[Deficiencia]  WITH CHECK ADD  CONSTRAINT [FK_Deficiencia_UsuarioInativacao] FOREIGN KEY([UsuarioIdInativacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Deficiencia] CHECK CONSTRAINT [FK_Deficiencia_UsuarioInativacao]
GO
ALTER TABLE [dbo].[DemissaoPessoa]  WITH CHECK ADD  CONSTRAINT [FK_Demissao_FornecedorDemitido] FOREIGN KEY([FornecedorDemitidoId])
REFERENCES [dbo].[Fornecedor] ([Id])
GO
ALTER TABLE [dbo].[DemissaoPessoa] CHECK CONSTRAINT [FK_Demissao_FornecedorDemitido]
GO
ALTER TABLE [dbo].[DemissaoPessoa]  WITH CHECK ADD  CONSTRAINT [FK_Demissao_UsuarioDemissor] FOREIGN KEY([UsuarioDemissorId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[DemissaoPessoa] CHECK CONSTRAINT [FK_Demissao_UsuarioDemissor]
GO
ALTER TABLE [dbo].[DemissaoPessoa]  WITH CHECK ADD  CONSTRAINT [FK_Demissao_UsuarioDemitido] FOREIGN KEY([UsuarioDemitidoId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[DemissaoPessoa] CHECK CONSTRAINT [FK_Demissao_UsuarioDemitido]
GO
ALTER TABLE [dbo].[DemissaoPessoa]  WITH CHECK ADD  CONSTRAINT [FK_DemissaoPessoa_MotivoDemissao] FOREIGN KEY([MotivoDemissaoId])
REFERENCES [dbo].[MotivoDemissao] ([Id])
GO
ALTER TABLE [dbo].[DemissaoPessoa] CHECK CONSTRAINT [FK_DemissaoPessoa_MotivoDemissao]
GO
ALTER TABLE [dbo].[FormularioBase]  WITH CHECK ADD  CONSTRAINT [FK_FormularioBase_UsuarioCriacao] FOREIGN KEY([UsuarioIdCriacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[FormularioBase] CHECK CONSTRAINT [FK_FormularioBase_UsuarioCriacao]
GO
ALTER TABLE [dbo].[FormularioBase]  WITH CHECK ADD  CONSTRAINT [FK_FormularioBase_UsuarioEdicao] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[FormularioBase] CHECK CONSTRAINT [FK_FormularioBase_UsuarioEdicao]
GO
ALTER TABLE [dbo].[FormularioBase]  WITH CHECK ADD  CONSTRAINT [FK_FormularioBase_UsuarioInativacao] FOREIGN KEY([UsuarioIdInativacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[FormularioBase] CHECK CONSTRAINT [FK_FormularioBase_UsuarioInativacao]
GO
ALTER TABLE [dbo].[Fornecedor]  WITH CHECK ADD FOREIGN KEY([CargoId])
REFERENCES [dbo].[Cargo] ([Id])
GO
ALTER TABLE [dbo].[Fornecedor]  WITH CHECK ADD FOREIGN KEY([SexoId])
REFERENCES [dbo].[Sexo] ([Id])
GO
ALTER TABLE [dbo].[Fornecedor]  WITH CHECK ADD  CONSTRAINT [FK__Fornecedo__Usuar__3587F3E0] FOREIGN KEY([UsuarioIdInativacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Fornecedor] CHECK CONSTRAINT [FK__Fornecedo__Usuar__3587F3E0]
GO
ALTER TABLE [dbo].[Fornecedor]  WITH CHECK ADD  CONSTRAINT [FK__Fornecedo__Usuar__367C1819] FOREIGN KEY([UsuarioIdCriacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Fornecedor] CHECK CONSTRAINT [FK__Fornecedo__Usuar__367C1819]
GO
ALTER TABLE [dbo].[Fornecedor]  WITH CHECK ADD  CONSTRAINT [FK__Fornecedo__Usuar__37703C52] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Fornecedor] CHECK CONSTRAINT [FK__Fornecedo__Usuar__37703C52]
GO
ALTER TABLE [dbo].[FornecedorFuncao]  WITH CHECK ADD FOREIGN KEY([CargoId])
REFERENCES [dbo].[Cargo] ([Id])
GO
ALTER TABLE [dbo].[FornecedorFuncao]  WITH CHECK ADD FOREIGN KEY([FornecedorId])
REFERENCES [dbo].[Fornecedor] ([Id])
GO
ALTER TABLE [dbo].[FornecedorFuncao]  WITH CHECK ADD FOREIGN KEY([FuncaoId])
REFERENCES [dbo].[Funcao] ([Id])
GO
ALTER TABLE [dbo].[FornecedorFuncaoFuncionalidade]  WITH CHECK ADD FOREIGN KEY([CargoId])
REFERENCES [dbo].[Cargo] ([Id])
GO
ALTER TABLE [dbo].[FornecedorFuncaoFuncionalidade]  WITH CHECK ADD FOREIGN KEY([FornecedorId])
REFERENCES [dbo].[Fornecedor] ([Id])
GO
ALTER TABLE [dbo].[FornecedorFuncaoFuncionalidade]  WITH CHECK ADD FOREIGN KEY([FuncaoFuncionalidadeId])
REFERENCES [dbo].[FuncaoFuncionalidade] ([Id])
GO
ALTER TABLE [dbo].[FornecedorFuncaoFuncionalidade]  WITH CHECK ADD FOREIGN KEY([FuncionalidadeId])
REFERENCES [dbo].[Funcionalidade] ([Id])
GO
ALTER TABLE [dbo].[FornecedorFuncaoFuncionalidade]  WITH CHECK ADD FOREIGN KEY([UnidadeNegocioId])
REFERENCES [dbo].[UnidadeNegocio] ([Id])
GO
ALTER TABLE [dbo].[FornecedorUnidadeNegocio]  WITH CHECK ADD FOREIGN KEY([FornecedorId])
REFERENCES [dbo].[Fornecedor] ([Id])
GO
ALTER TABLE [dbo].[FornecedorUnidadeNegocio]  WITH CHECK ADD FOREIGN KEY([UnidadeNegocioId])
REFERENCES [dbo].[UnidadeNegocio] ([Id])
GO
ALTER TABLE [dbo].[FranquiaUnidadeNegocio]  WITH CHECK ADD  CONSTRAINT [FK_FranquiaUN_UnidadeNegocio] FOREIGN KEY([UnidadeNegocioId])
REFERENCES [dbo].[UnidadeNegocio] ([Id])
GO
ALTER TABLE [dbo].[FranquiaUnidadeNegocio] CHECK CONSTRAINT [FK_FranquiaUN_UnidadeNegocio]
GO
ALTER TABLE [dbo].[Funcao]  WITH CHECK ADD  CONSTRAINT [FK_Funcao_UsuarioCriacao] FOREIGN KEY([UsuarioIdCriacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Funcao] CHECK CONSTRAINT [FK_Funcao_UsuarioCriacao]
GO
ALTER TABLE [dbo].[Funcao]  WITH CHECK ADD  CONSTRAINT [FK_Funcao_UsuarioEdicao] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Funcao] CHECK CONSTRAINT [FK_Funcao_UsuarioEdicao]
GO
ALTER TABLE [dbo].[Funcao]  WITH CHECK ADD  CONSTRAINT [FK_Funcao_UsuarioInativacao] FOREIGN KEY([UsuarioIdInativacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Funcao] CHECK CONSTRAINT [FK_Funcao_UsuarioInativacao]
GO
ALTER TABLE [dbo].[FuncaoCargo]  WITH CHECK ADD  CONSTRAINT [FK_FuncaoCargo_Cargo] FOREIGN KEY([CargoId])
REFERENCES [dbo].[Cargo] ([Id])
GO
ALTER TABLE [dbo].[FuncaoCargo] CHECK CONSTRAINT [FK_FuncaoCargo_Cargo]
GO
ALTER TABLE [dbo].[FuncaoCargo]  WITH CHECK ADD  CONSTRAINT [FK_FuncaoCargo_Funcao] FOREIGN KEY([FuncaoId])
REFERENCES [dbo].[Funcao] ([Id])
GO
ALTER TABLE [dbo].[FuncaoCargo] CHECK CONSTRAINT [FK_FuncaoCargo_Funcao]
GO
ALTER TABLE [dbo].[FuncaoCargo]  WITH CHECK ADD  CONSTRAINT [FK_FuncaoCargo_Usuario] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[FuncaoCargo] CHECK CONSTRAINT [FK_FuncaoCargo_Usuario]
GO
ALTER TABLE [dbo].[FuncaoFuncionalidade]  WITH CHECK ADD  CONSTRAINT [FK_FuncaoFuncionalidade_Funcao] FOREIGN KEY([FuncaoId])
REFERENCES [dbo].[Funcao] ([Id])
GO
ALTER TABLE [dbo].[FuncaoFuncionalidade] CHECK CONSTRAINT [FK_FuncaoFuncionalidade_Funcao]
GO
ALTER TABLE [dbo].[FuncaoFuncionalidade]  WITH CHECK ADD  CONSTRAINT [FK_FuncaoFuncionalidade_Funcionalidade] FOREIGN KEY([FuncionalidadeId])
REFERENCES [dbo].[Funcionalidade] ([Id])
GO
ALTER TABLE [dbo].[FuncaoFuncionalidade] CHECK CONSTRAINT [FK_FuncaoFuncionalidade_Funcionalidade]
GO
ALTER TABLE [dbo].[FuncaoFuncionalidade]  WITH CHECK ADD  CONSTRAINT [FK_FuncaoFuncionalidade_Usuario] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[FuncaoFuncionalidade] CHECK CONSTRAINT [FK_FuncaoFuncionalidade_Usuario]
GO
ALTER TABLE [dbo].[Funcionalidade]  WITH CHECK ADD  CONSTRAINT [FK_Funcionalidade_Sistema] FOREIGN KEY([SistemaId])
REFERENCES [dbo].[Sistema] ([Id])
GO
ALTER TABLE [dbo].[Funcionalidade] CHECK CONSTRAINT [FK_Funcionalidade_Sistema]
GO
ALTER TABLE [dbo].[Funcionalidade]  WITH CHECK ADD  CONSTRAINT [FK_Funcionalidade_UsuarioCriacao] FOREIGN KEY([UsuarioIdCriacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Funcionalidade] CHECK CONSTRAINT [FK_Funcionalidade_UsuarioCriacao]
GO
ALTER TABLE [dbo].[Funcionalidade]  WITH CHECK ADD  CONSTRAINT [FK_Funcionalidade_UsuarioEdicao] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Funcionalidade] CHECK CONSTRAINT [FK_Funcionalidade_UsuarioEdicao]
GO
ALTER TABLE [dbo].[Funcionalidade]  WITH CHECK ADD  CONSTRAINT [FK_Funcionalidade_UsuarioInativacao] FOREIGN KEY([UsuarioIdInativacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Funcionalidade] CHECK CONSTRAINT [FK_Funcionalidade_UsuarioInativacao]
GO
ALTER TABLE [dbo].[Genero]  WITH CHECK ADD  CONSTRAINT [FK_Genero_UsuarioCriacao] FOREIGN KEY([UsuarioIdCriacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Genero] CHECK CONSTRAINT [FK_Genero_UsuarioCriacao]
GO
ALTER TABLE [dbo].[Genero]  WITH CHECK ADD  CONSTRAINT [FK_Genero_UsuarioEdicao] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Genero] CHECK CONSTRAINT [FK_Genero_UsuarioEdicao]
GO
ALTER TABLE [dbo].[Genero]  WITH CHECK ADD  CONSTRAINT [FK_Genero_UsuarioInativacao] FOREIGN KEY([UsuarioIdInativacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Genero] CHECK CONSTRAINT [FK_Genero_UsuarioInativacao]
GO
ALTER TABLE [dbo].[IntegracaoEnvio]  WITH CHECK ADD  CONSTRAINT [FK_IntegracaoEnvio_Usuario] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[IntegracaoEnvio] CHECK CONSTRAINT [FK_IntegracaoEnvio_Usuario]
GO
ALTER TABLE [dbo].[IntegracaoEnvioFornecedor]  WITH CHECK ADD FOREIGN KEY([FornecedorId])
REFERENCES [dbo].[Fornecedor] ([Id])
GO
ALTER TABLE [dbo].[IntegracaoProcessamento]  WITH CHECK ADD  CONSTRAINT [FK_IntegracaoProcessamento_Sistema] FOREIGN KEY([SistemaId])
REFERENCES [dbo].[Sistema] ([Id])
GO
ALTER TABLE [dbo].[IntegracaoProcessamento] CHECK CONSTRAINT [FK_IntegracaoProcessamento_Sistema]
GO
ALTER TABLE [dbo].[LogLigaDesligaAcesso]  WITH CHECK ADD FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[LogLigaDesligaAcesso]  WITH CHECK ADD FOREIGN KEY([UsuarioIdResp])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[LogUsuarioFranquiaResponsabilidadeAdministrativa]  WITH CHECK ADD FOREIGN KEY([UnidadeNegocioId])
REFERENCES [dbo].[UnidadeNegocio] ([Id])
GO
ALTER TABLE [dbo].[LogUsuarioFranquiaResponsabilidadeAdministrativa]  WITH CHECK ADD FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[MovimentacaoPessoa]  WITH CHECK ADD FOREIGN KEY([UnidadeNegocioId])
REFERENCES [dbo].[UnidadeNegocio] ([Id])
GO
ALTER TABLE [dbo].[MovimentacaoPessoa]  WITH CHECK ADD  CONSTRAINT [FK_Movimentacao_UsuarioMovimentacao] FOREIGN KEY([UsuarioMovimentacaoId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[MovimentacaoPessoa] CHECK CONSTRAINT [FK_Movimentacao_UsuarioMovimentacao]
GO
ALTER TABLE [dbo].[MovimentacaoPessoa]  WITH CHECK ADD  CONSTRAINT [FK_Movimentacao_UsuarioMovimentado] FOREIGN KEY([UsuarioMovimentadoId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[MovimentacaoPessoa] CHECK CONSTRAINT [FK_Movimentacao_UsuarioMovimentado]
GO
ALTER TABLE [dbo].[MovimentacaoPessoa]  WITH CHECK ADD  CONSTRAINT [FK_MovimentacaoPessoa_Cargoid] FOREIGN KEY([CargoId])
REFERENCES [dbo].[Cargo] ([Id])
GO
ALTER TABLE [dbo].[MovimentacaoPessoa] CHECK CONSTRAINT [FK_MovimentacaoPessoa_Cargoid]
GO
ALTER TABLE [dbo].[MovimentacaoPessoa]  WITH CHECK ADD  CONSTRAINT [FK_MovimentacaoPessoa_CargoOldId] FOREIGN KEY([CargoOldId])
REFERENCES [dbo].[Cargo] ([Id])
GO
ALTER TABLE [dbo].[MovimentacaoPessoa] CHECK CONSTRAINT [FK_MovimentacaoPessoa_CargoOldId]
GO
ALTER TABLE [dbo].[Pais]  WITH CHECK ADD  CONSTRAINT [FK_Pais_UsuarioCriacao] FOREIGN KEY([UsuarioIdCriacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Pais] CHECK CONSTRAINT [FK_Pais_UsuarioCriacao]
GO
ALTER TABLE [dbo].[Pais]  WITH CHECK ADD  CONSTRAINT [FK_Pais_UsuarioEdicao] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Pais] CHECK CONSTRAINT [FK_Pais_UsuarioEdicao]
GO
ALTER TABLE [dbo].[Pais]  WITH CHECK ADD  CONSTRAINT [FK_Pais_UsuarioInativacao] FOREIGN KEY([UsuarioIdInativacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Pais] CHECK CONSTRAINT [FK_Pais_UsuarioInativacao]
GO
ALTER TABLE [dbo].[ParametroEmail]  WITH CHECK ADD  CONSTRAINT [FK_ParametroEmail_Cargo] FOREIGN KEY([CargoId])
REFERENCES [dbo].[Cargo] ([Id])
GO
ALTER TABLE [dbo].[ParametroEmail] CHECK CONSTRAINT [FK_ParametroEmail_Cargo]
GO
ALTER TABLE [dbo].[ParametroEmail]  WITH CHECK ADD  CONSTRAINT [FK_ParametroEmail_UnidadeNegocio] FOREIGN KEY([UnidadeNegocioId])
REFERENCES [dbo].[UnidadeNegocio] ([Id])
GO
ALTER TABLE [dbo].[ParametroEmail] CHECK CONSTRAINT [FK_ParametroEmail_UnidadeNegocio]
GO
ALTER TABLE [dbo].[ParametroEmail]  WITH CHECK ADD  CONSTRAINT [FK_ParametroEmail_UsuarioCriacao] FOREIGN KEY([UsuarioIdCriacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[ParametroEmail] CHECK CONSTRAINT [FK_ParametroEmail_UsuarioCriacao]
GO
ALTER TABLE [dbo].[ParametroEmail]  WITH CHECK ADD  CONSTRAINT [FK_ParametroEmail_UsuarioEdicao] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[ParametroEmail] CHECK CONSTRAINT [FK_ParametroEmail_UsuarioEdicao]
GO
ALTER TABLE [dbo].[ParametroEmail]  WITH CHECK ADD  CONSTRAINT [FK_ParametroEmail_UsuarioInativacao] FOREIGN KEY([UsuarioIdInativacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[ParametroEmail] CHECK CONSTRAINT [FK_ParametroEmail_UsuarioInativacao]
GO
ALTER TABLE [dbo].[ParametroIntegracaoHR]  WITH CHECK ADD  CONSTRAINT [FK_ParametroIntegracaoHR_Cargo] FOREIGN KEY([CargoId])
REFERENCES [dbo].[Cargo] ([Id])
GO
ALTER TABLE [dbo].[ParametroIntegracaoHR] CHECK CONSTRAINT [FK_ParametroIntegracaoHR_Cargo]
GO
ALTER TABLE [dbo].[ParametroSistema]  WITH CHECK ADD  CONSTRAINT [FK_ParametroSistema_CargoDefaultIntegracaoHR] FOREIGN KEY([CargoDefaultIdIntegracaoHR])
REFERENCES [dbo].[Cargo] ([Id])
GO
ALTER TABLE [dbo].[ParametroSistema] CHECK CONSTRAINT [FK_ParametroSistema_CargoDefaultIntegracaoHR]
GO
ALTER TABLE [dbo].[ParametroSistema]  WITH CHECK ADD  CONSTRAINT [FK_ParametroSistema_Usuario] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[ParametroSistema] CHECK CONSTRAINT [FK_ParametroSistema_Usuario]
GO
ALTER TABLE [dbo].[ParametroSistemaCampoUsuario]  WITH CHECK ADD  CONSTRAINT [FK_ParametroSistemaCampoUsuario_ParametroCampoUsuario] FOREIGN KEY([ParametroCampoUsuarioId])
REFERENCES [dbo].[ParametroCampoUsuario] ([Id])
GO
ALTER TABLE [dbo].[ParametroSistemaCampoUsuario] CHECK CONSTRAINT [FK_ParametroSistemaCampoUsuario_ParametroCampoUsuario]
GO
ALTER TABLE [dbo].[ParametroSistemaCampoUsuario]  WITH CHECK ADD  CONSTRAINT [FK_ParametroSistemaCampoUsuario_Sistema] FOREIGN KEY([SistemaId])
REFERENCES [dbo].[Sistema] ([Id])
GO
ALTER TABLE [dbo].[ParametroSistemaCampoUsuario] CHECK CONSTRAINT [FK_ParametroSistemaCampoUsuario_Sistema]
GO
ALTER TABLE [dbo].[ParametroSistemaCampoUsuario]  WITH CHECK ADD  CONSTRAINT [FK_ParametroSistemaCampoUsuario_Usuario] FOREIGN KEY([UsuarioIdCriacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[ParametroSistemaCampoUsuario] CHECK CONSTRAINT [FK_ParametroSistemaCampoUsuario_Usuario]
GO
ALTER TABLE [dbo].[ParametrosMultiplicador]  WITH CHECK ADD FOREIGN KEY([CargoId])
REFERENCES [dbo].[Cargo] ([Id])
GO
ALTER TABLE [dbo].[Raca]  WITH CHECK ADD  CONSTRAINT [FK_Raca_UsuarioCriacao] FOREIGN KEY([UsuarioIdCriacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Raca] CHECK CONSTRAINT [FK_Raca_UsuarioCriacao]
GO
ALTER TABLE [dbo].[Raca]  WITH CHECK ADD  CONSTRAINT [FK_Raca_UsuarioEdicao] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Raca] CHECK CONSTRAINT [FK_Raca_UsuarioEdicao]
GO
ALTER TABLE [dbo].[Raca]  WITH CHECK ADD  CONSTRAINT [FK_Raca_UsuarioInativacao] FOREIGN KEY([UsuarioIdInativacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Raca] CHECK CONSTRAINT [FK_Raca_UsuarioInativacao]
GO
ALTER TABLE [dbo].[Relatorio]  WITH CHECK ADD  CONSTRAINT [FK_Relatorio_RelatorioCategoriaId] FOREIGN KEY([RelatorioCategoriaId])
REFERENCES [dbo].[RelatorioCategoria] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Relatorio] CHECK CONSTRAINT [FK_Relatorio_RelatorioCategoriaId]
GO
ALTER TABLE [dbo].[RelatorioConfiguracao]  WITH CHECK ADD  CONSTRAINT [FK_RelatorioConfiguracao_Relatorio] FOREIGN KEY([RelatorioId])
REFERENCES [dbo].[Relatorio] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RelatorioConfiguracao] CHECK CONSTRAINT [FK_RelatorioConfiguracao_Relatorio]
GO
ALTER TABLE [dbo].[RelatorioVariavel]  WITH CHECK ADD  CONSTRAINT [FK_RelatorioVariavel_RelatorioId] FOREIGN KEY([RelatorioId])
REFERENCES [dbo].[Relatorio] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RelatorioVariavel] CHECK CONSTRAINT [FK_RelatorioVariavel_RelatorioId]
GO
ALTER TABLE [dbo].[RepresentanteLegalAssinatura]  WITH CHECK ADD  CONSTRAINT [FK_RepresentanteLegalAssinatura_RepresentanteLegalFuncao] FOREIGN KEY([RepresentanteLegalFuncaoId])
REFERENCES [dbo].[RepresentanteLegalFuncao] ([Id])
GO
ALTER TABLE [dbo].[RepresentanteLegalAssinatura] CHECK CONSTRAINT [FK_RepresentanteLegalAssinatura_RepresentanteLegalFuncao]
GO
ALTER TABLE [dbo].[Sistema]  WITH CHECK ADD  CONSTRAINT [FK_Sistema_UsuarioCriacao] FOREIGN KEY([UsuarioIdCriacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Sistema] CHECK CONSTRAINT [FK_Sistema_UsuarioCriacao]
GO
ALTER TABLE [dbo].[Sistema]  WITH CHECK ADD  CONSTRAINT [FK_Sistema_UsuarioEdicao] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Sistema] CHECK CONSTRAINT [FK_Sistema_UsuarioEdicao]
GO
ALTER TABLE [dbo].[Sistema]  WITH CHECK ADD  CONSTRAINT [FK_Sistema_UsuarioInativacao] FOREIGN KEY([UsuarioIdInativacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Sistema] CHECK CONSTRAINT [FK_Sistema_UsuarioInativacao]
GO
ALTER TABLE [dbo].[SistemaAreaNegocio]  WITH CHECK ADD  CONSTRAINT [FK_SistemaAreaNegocio_AreaNegocio] FOREIGN KEY([AreaNegocioId])
REFERENCES [dbo].[AreaNegocio] ([Id])
GO
ALTER TABLE [dbo].[SistemaAreaNegocio] CHECK CONSTRAINT [FK_SistemaAreaNegocio_AreaNegocio]
GO
ALTER TABLE [dbo].[SistemaAreaNegocio]  WITH CHECK ADD  CONSTRAINT [FK_SistemaAreaNegocio_Sistema] FOREIGN KEY([SistemaId])
REFERENCES [dbo].[Sistema] ([Id])
GO
ALTER TABLE [dbo].[SistemaAreaNegocio] CHECK CONSTRAINT [FK_SistemaAreaNegocio_Sistema]
GO
ALTER TABLE [dbo].[SistemaAreaNegocio]  WITH CHECK ADD  CONSTRAINT [FK_SistemaAreaNegocio_Usuario] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[SistemaAreaNegocio] CHECK CONSTRAINT [FK_SistemaAreaNegocio_Usuario]
GO
ALTER TABLE [dbo].[TermoAceiteMultiplicador]  WITH CHECK ADD FOREIGN KEY([CargoId])
REFERENCES [dbo].[Cargo] ([Id])
GO
ALTER TABLE [dbo].[TermoAceiteMultiplicador]  WITH CHECK ADD FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[TermoResponsabilidade]  WITH CHECK ADD  CONSTRAINT [FK_TermoResponsabilidade_UsuarioCriacao] FOREIGN KEY([UsuarioIdCriacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[TermoResponsabilidade] CHECK CONSTRAINT [FK_TermoResponsabilidade_UsuarioCriacao]
GO
ALTER TABLE [dbo].[TermoResponsabilidade]  WITH CHECK ADD  CONSTRAINT [FK_TermoResponsabilidade_UsuarioEdicao] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[TermoResponsabilidade] CHECK CONSTRAINT [FK_TermoResponsabilidade_UsuarioEdicao]
GO
ALTER TABLE [dbo].[TermoResponsabilidade]  WITH CHECK ADD  CONSTRAINT [FK_TermoResponsabilidade_UsuarioInativacao] FOREIGN KEY([UsuarioIdInativacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[TermoResponsabilidade] CHECK CONSTRAINT [FK_TermoResponsabilidade_UsuarioInativacao]
GO
ALTER TABLE [dbo].[TermoResponsabilidadeDoc]  WITH CHECK ADD  CONSTRAINT [FK_TermoResponsabilidadeDoc_TermoResponsabilidade] FOREIGN KEY([TermoResponsabilidadeId])
REFERENCES [dbo].[TermoResponsabilidade] ([Id])
GO
ALTER TABLE [dbo].[TermoResponsabilidadeDoc] CHECK CONSTRAINT [FK_TermoResponsabilidadeDoc_TermoResponsabilidade]
GO
ALTER TABLE [dbo].[TermoResponsabilidadeDoc]  WITH CHECK ADD  CONSTRAINT [FK_TermoResponsabilidadeDoc_Usuario] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[TermoResponsabilidadeDoc] CHECK CONSTRAINT [FK_TermoResponsabilidadeDoc_Usuario]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Cargo] FOREIGN KEY([CargoId])
REFERENCES [dbo].[Cargo] ([Id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Cargo]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_EstadoCivil] FOREIGN KEY([EstadoCivilId])
REFERENCES [dbo].[EstadoCivil] ([Id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_EstadoCivil]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_GrauInstrucao] FOREIGN KEY([GrauInstrucaoId])
REFERENCES [dbo].[GrauInstrucao] ([Id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_GrauInstrucao]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Sexo] FOREIGN KEY([SexoId])
REFERENCES [dbo].[Sexo] ([Id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Sexo]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_TipoFuncionario] FOREIGN KEY([TipoFuncionarioId])
REFERENCES [dbo].[TipoFuncionario] ([Id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_TipoFuncionario]
GO
ALTER TABLE [dbo].[UsuarioAuxiliar]  WITH CHECK ADD FOREIGN KEY([FuncaoId])
REFERENCES [dbo].[Funcao] ([Id])
GO
ALTER TABLE [dbo].[UsuarioConsultaFiltro]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioConsultaFiltro_Usuario] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[UsuarioConsultaFiltro] CHECK CONSTRAINT [FK_UsuarioConsultaFiltro_Usuario]
GO
ALTER TABLE [dbo].[UsuarioFranquiaAtuacaoSistema]  WITH CHECK ADD FOREIGN KEY([UnidadeNegocioId])
REFERENCES [dbo].[UnidadeNegocio] ([Id])
GO
ALTER TABLE [dbo].[UsuarioFranquiaAtuacaoSistema]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioFranquiaAtuacao_Usuario] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[UsuarioFranquiaAtuacaoSistema] CHECK CONSTRAINT [FK_UsuarioFranquiaAtuacao_Usuario]
GO
ALTER TABLE [dbo].[UsuarioFranquiaAtuacaoSistema]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioFranquiaAtuacaoSistema_UsuarioEdicao] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[UsuarioFranquiaAtuacaoSistema] CHECK CONSTRAINT [FK_UsuarioFranquiaAtuacaoSistema_UsuarioEdicao]
GO
ALTER TABLE [dbo].[UsuarioFranquiaResponsabilidadeAdministrativa]  WITH CHECK ADD FOREIGN KEY([UnidadeNegocioId])
REFERENCES [dbo].[UnidadeNegocio] ([Id])
GO
ALTER TABLE [dbo].[UsuarioFranquiaResponsabilidadeAdministrativa]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioFranquiaResponsabilidadeAdministrativa_Usuario] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[UsuarioFranquiaResponsabilidadeAdministrativa] CHECK CONSTRAINT [FK_UsuarioFranquiaResponsabilidadeAdministrativa_Usuario]
GO
ALTER TABLE [dbo].[UsuarioFranquiaResponsabilidadeAdministrativa]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioFranquiaResponsabilidadeAdministrativa_UsuarioEdicao] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[UsuarioFranquiaResponsabilidadeAdministrativa] CHECK CONSTRAINT [FK_UsuarioFranquiaResponsabilidadeAdministrativa_UsuarioEdicao]
GO
ALTER TABLE [dbo].[UsuarioFranquiaResponsabilidadeLegal]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioFranquiaRepresentanteLegal_RepresentanteLegalAssinatura] FOREIGN KEY([AssinaturaId])
REFERENCES [dbo].[RepresentanteLegalAssinatura] ([Id])
GO
ALTER TABLE [dbo].[UsuarioFranquiaResponsabilidadeLegal] CHECK CONSTRAINT [FK_UsuarioFranquiaRepresentanteLegal_RepresentanteLegalAssinatura]
GO
ALTER TABLE [dbo].[UsuarioFranquiaResponsabilidadeLegal]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioFranquiaRepresentanteLegal_Usuario] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[UsuarioFranquiaResponsabilidadeLegal] CHECK CONSTRAINT [FK_UsuarioFranquiaRepresentanteLegal_Usuario]
GO
ALTER TABLE [dbo].[UsuarioFranquiaResponsabilidadeLegal]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioFranquiaRepresentanteLegal_UsuarioEdicao] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[UsuarioFranquiaResponsabilidadeLegal] CHECK CONSTRAINT [FK_UsuarioFranquiaRepresentanteLegal_UsuarioEdicao]
GO
ALTER TABLE [dbo].[UsuarioFuncao]  WITH CHECK ADD FOREIGN KEY([CargoId])
REFERENCES [dbo].[Cargo] ([Id])
GO
ALTER TABLE [dbo].[UsuarioFuncao]  WITH CHECK ADD FOREIGN KEY([FuncaoId])
REFERENCES [dbo].[Funcao] ([Id])
GO
ALTER TABLE [dbo].[UsuarioFuncao]  WITH CHECK ADD FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[UsuarioFuncaoFuncionalidade]  WITH CHECK ADD FOREIGN KEY([CargoId])
REFERENCES [dbo].[Cargo] ([Id])
GO
ALTER TABLE [dbo].[UsuarioFuncaoFuncionalidade]  WITH CHECK ADD FOREIGN KEY([FuncionalidadeId])
REFERENCES [dbo].[Funcionalidade] ([Id])
GO
ALTER TABLE [dbo].[UsuarioFuncaoFuncionalidade]  WITH CHECK ADD FOREIGN KEY([UnidadeNegocioId])
REFERENCES [dbo].[UnidadeNegocio] ([Id])
GO
ALTER TABLE [dbo].[UsuarioFuncaoFuncionalidade]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioFuncionalidade_FuncaoFuncionalidade] FOREIGN KEY([FuncaoFuncionalidadeId])
REFERENCES [dbo].[FuncaoFuncionalidade] ([Id])
GO
ALTER TABLE [dbo].[UsuarioFuncaoFuncionalidade] CHECK CONSTRAINT [FK_UsuarioFuncionalidade_FuncaoFuncionalidade]
GO
ALTER TABLE [dbo].[UsuarioFuncaoFuncionalidade]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioFuncionalidade_Usuario] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[UsuarioFuncaoFuncionalidade] CHECK CONSTRAINT [FK_UsuarioFuncionalidade_Usuario]
GO
ALTER TABLE [dbo].[UsuarioFuncaoFuncionalidade]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioFuncionalidade_UsuarioEdicao] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[UsuarioFuncaoFuncionalidade] CHECK CONSTRAINT [FK_UsuarioFuncionalidade_UsuarioEdicao]
GO
ALTER TABLE [dbo].[UsuarioHistoricoAusencia]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioHistoricoAusencia_MotivoAusencia] FOREIGN KEY([MotivoAusenciaId])
REFERENCES [dbo].[MotivoAusencia] ([Id])
GO
ALTER TABLE [dbo].[UsuarioHistoricoAusencia] CHECK CONSTRAINT [FK_UsuarioHistoricoAusencia_MotivoAusencia]
GO
ALTER TABLE [dbo].[UsuarioHistoricoAusencia]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioHistoricoAusencia_Usuario] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[UsuarioHistoricoAusencia] CHECK CONSTRAINT [FK_UsuarioHistoricoAusencia_Usuario]
GO
ALTER TABLE [dbo].[UsuarioHistoricoAusencia]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioHistoricoAusencia_UsuarioEdicao] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[UsuarioHistoricoAusencia] CHECK CONSTRAINT [FK_UsuarioHistoricoAusencia_UsuarioEdicao]
GO
ALTER TABLE [dbo].[UsuarioImportador]  WITH CHECK ADD  CONSTRAINT [UsuarioImportador_UsuarioId_FK] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[UsuarioImportador] CHECK CONSTRAINT [UsuarioImportador_UsuarioId_FK]
GO
ALTER TABLE [dbo].[UsuarioMovimentacao]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioMovimentacao_Cargo] FOREIGN KEY([CargoId])
REFERENCES [dbo].[Cargo] ([Id])
GO
ALTER TABLE [dbo].[UsuarioMovimentacao] CHECK CONSTRAINT [FK_UsuarioMovimentacao_Cargo]
GO
ALTER TABLE [dbo].[UsuarioMovimentacao]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioMovimentacao_TipoMovimentacao] FOREIGN KEY([TipoMovimentacaoId])
REFERENCES [dbo].[TipoMovimentacao] ([Id])
GO
ALTER TABLE [dbo].[UsuarioMovimentacao] CHECK CONSTRAINT [FK_UsuarioMovimentacao_TipoMovimentacao]
GO
ALTER TABLE [dbo].[UsuarioMovimentacao]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioMovimentacao_Usuario] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[UsuarioMovimentacao] CHECK CONSTRAINT [FK_UsuarioMovimentacao_Usuario]
GO
ALTER TABLE [dbo].[UsuarioMultiplicador]  WITH CHECK ADD FOREIGN KEY([CargoId])
REFERENCES [dbo].[Cargo] ([Id])
GO
ALTER TABLE [dbo].[UsuarioMultiplicador]  WITH CHECK ADD FOREIGN KEY([CargoIdOld])
REFERENCES [dbo].[Cargo] ([Id])
GO
ALTER TABLE [dbo].[UsuarioMultiplicador]  WITH CHECK ADD FOREIGN KEY([TermoAceiteMultiplicadorId])
REFERENCES [dbo].[TermoAceiteMultiplicador] ([Id])
GO
ALTER TABLE [dbo].[UsuarioMultiplicador]  WITH CHECK ADD FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[UsuarioMultiplicador]  WITH CHECK ADD FOREIGN KEY([UsuarioIdCriacao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[UsuarioMultiplicador]  WITH CHECK ADD FOREIGN KEY([UsuarioIdAprovador])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[UsuarioUnidadeNegocio]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioUnidadeNegocio_UnidadeNegocio] FOREIGN KEY([UnidadeNegocioId])
REFERENCES [dbo].[UnidadeNegocio] ([Id])
GO
ALTER TABLE [dbo].[UsuarioUnidadeNegocio] CHECK CONSTRAINT [FK_UsuarioUnidadeNegocio_UnidadeNegocio]
GO
ALTER TABLE [dbo].[UsuarioUnidadeNegocio]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioUnidadeNegocio_Usuario] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[UsuarioUnidadeNegocio] CHECK CONSTRAINT [FK_UsuarioUnidadeNegocio_Usuario]
GO
ALTER TABLE [dbo].[UsuarioUnidadeNegocio]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioUnidadeNegocio_UsuarioEdicao] FOREIGN KEY([UsuarioIdEdicao])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[UsuarioUnidadeNegocio] CHECK CONSTRAINT [FK_UsuarioUnidadeNegocio_UsuarioEdicao]
GO
ALTER TABLE [dbo].[Log]  WITH CHECK ADD  CONSTRAINT [Ck_Log_Specie] CHECK  (([Specie]='AUDIT' OR [Specie]='ERROR' OR [Specie]='DEBUG' OR [Specie]='TRACE'))
GO
ALTER TABLE [dbo].[Log] CHECK CONSTRAINT [Ck_Log_Specie]
GO
ALTER TABLE [dbo].[RelatorioVariavel]  WITH CHECK ADD  CONSTRAINT [CK_RelatorioVariavel_Logico] CHECK  (([Logico]='<' OR [Logico]='>' OR [Logico]='<>' OR [Logico]='='))
GO
ALTER TABLE [dbo].[RelatorioVariavel] CHECK CONSTRAINT [CK_RelatorioVariavel_Logico]
GO
ALTER TABLE [dbo].[RelatorioVariavel]  WITH CHECK ADD  CONSTRAINT [CK_RelatorioVariavel_Tipo] CHECK  (([Tipo]='F' OR [Tipo]='I'))
GO
ALTER TABLE [dbo].[RelatorioVariavel] CHECK CONSTRAINT [CK_RelatorioVariavel_Tipo]
GO
