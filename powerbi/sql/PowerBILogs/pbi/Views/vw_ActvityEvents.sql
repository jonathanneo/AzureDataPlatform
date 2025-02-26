﻿

CREATE VIEW [pbi].[vw_ActvityEvents] AS 

SELECT 
	act.[Id]                    
	,act.[WorkspaceId]
    ,act.[DatasetId]
	,act.[ObjectId]
	,act.[ImportId]
	,act.[DashboardId]	
	,act.[DataflowId]	
	,act.[GatewayId]
	,act.[ReportId]
	,act.[RecordType] AS [Record Type]            
	,act.[CreationTime]	AS [Creation Time]
	,act.[Operation]
	,act.[OrganizationId] AS [Organization ID]
	,act.[UserType] AS [User Type]
	,act.[UserKey] AS [User Key]
	,act.[Workload]
	,act.[UserId] AS [User ID]
	,act.[ClientIP] AS [Client IP]
	,act.[UserAgent] AS [User Agent]
	,act.[Activity]
	,act.[IsSuccess] AS [Is Success]
	,act.[RequestId] AS [Request ID]
	,act.[ActivityId] AS [Activity ID]
	,act.[ItemName] AS [Item Name]
	,act.[ItemType] AS [Item Type]
	,act.[WorkspaceName] AS [Workspace Name]
	,act.[ImportSource]	AS [Import Source]	
	,act.[ImportType] AS [Import Type]	
	,act.[ImportDisplayName] AS [Import Display Name]
	,act.[DatasetName] AS [Dataset Name]	
	,dssrc.[DatasourceId] AS [DatasetDatasourceID]
	,dssrc.[Name]	AS [Dataset Datasource Name]
	,dssrc.[ConnectionString] AS [Dataset Datasource ConnectionString]
	,dssrc.[DatasourceType] AS [Dataset Datasource Type]
	,dssrc.[GatewayId]AS [Dataset Datasource Gateway ID]
	,dssrc.[Server]	AS [Dataset Datasource Server]
	,dssrc.[Database] AS [Dataset Datasource Database]
	,dssrc.[Url]	AS [Dataset Datasource Url]
	,act.[DataConnectivityMode]	AS [Data Connectivity Mode]
	,act.[OrgAppPermission] AS [Org App Permission]
	,act.[DashboardName] AS [Dashboard Name]	
	,act.[DataflowName]	AS [Dataflow Name]
	,act.[DataflowAccessTokenRequestParameters] AS [Dataflow Access Token Request Parameters]	
	,act.[DataflowType] AS [Dataflow Type]
	,dfsrc.[DatasourceId]   AS [Dataflow Datasource ID]
	,dfsrc.[Name]	AS [Dataflow Datasource Name]
	,dfsrc.[ConnectionString] AS [Dataflow Datasource ConnectionString]
	,dfsrc.[DatasourceType] AS [Dataflow Datasource Type]
	,dfsrc.[GatewayId] AS [Dataflow Datasource Gateway ID]
	,dfsrc.[Server]	AS [Dataflow Datasource Server]
	,dfsrc.[Database] AS [Dataflow Datasource Database]
	,dfsrc.[Url]	AS [Dataflow Datasource Url]
	,act.[GatewayName]	 AS [Gateway Name]
	,act.[GatewayType]	AS [Gateway Type]
	,act.[ReportName]	AS [Report Name]
	,act.[ReportType] AS [Report Type]	
	,act.[FolderObjectId] AS [Folder Object ID]
	,act.[FolderDisplayName] AS [Folder Display Name]
	,act.[ArtifactName] AS [Artifact Name]	
	,act.[ArtifactId] AS [Artifact ID]	
	,act.[CapacityName]	 AS [Capacity Name]	
	,act.[CapacityUsers] AS [Capacity Users]	
	,act.[CapacityState] AS [Capacity State]	
	,act.[DistributionMethod] AS [Distribution Method]	
	,act.[ConsumptionMethod] AS [Consumption Method]
	,act.[RefreshType] AS [Refresh Type]	
	,act.[ExportEventStartDateTimeParameter] AS [Export Event Start DateTime Parameter]	 
	,act.[ExportEventEndDateTimeParameter] AS [Export Event End DateTime Parameter]	
FROM 
	pbi.ActivityEvents act LEFT OUTER JOIN pbi.DatasetsDatasources dssrc 
	ON act.DatasetId = dssrc.DatasetId LEFT OUTER JOIN pbi.DataflowsDatasources dfsrc
	ON act.DataflowId = dfsrc.DataflowId
