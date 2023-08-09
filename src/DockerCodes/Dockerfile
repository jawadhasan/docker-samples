#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/core/runtime:3.1-buster-slim AS base
WORKDIR /app

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src

COPY ["AccountingBook.Core/AccountingBook.Core.csproj", "AccountingBook.Core/"]
COPY ["AccountingBook.Data/AccountingBook.Data.csproj", "AccountingBook.Data/"]
COPY ["AccountingBook.Web/AccountingBook.Web.csproj", "AccountingBook.Web/"]

#COPY ["HCSS.Plugins/HCSS.Plugins.CIJ/HCSS.Plugins.CIJ.csproj", "HCSS.Plugins/HCSS.Plugins.CIJ/"]
#RUN dotnet restore "HCSS.Dashboard/BackgroundServiceSample/HCSS.DeviceDataService.csproj"
#COPY . .
#WORKDIR "/src/HCSS.Dashboard/BackgroundServiceSample"
#RUN dotnet build "HCSS.DeviceDataService.csproj" -c Release -o /app/build

#FROM build AS publish
#RUN dotnet publish "HCSS.DeviceDataService.csproj" -c Release -o /app/publish

#FROM base AS final
#WORKDIR /app
#COPY --from=publish /app/publish .
#ENTRYPOINT ["dotnet", "HCSS.DeviceDataService.dll"]
