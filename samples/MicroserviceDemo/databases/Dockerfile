FROM microsoft/dotnet:2.2-sdk-alpine AS build
RUN apk add --no-cache bash
WORKDIR /
COPY ./ .

WORKDIR "../microservices/ProductService.Host"
RUN dotnet restore -s http://nuget.juniux.com -s https://api.nuget.org/v3/index.json -nowarn:msb3202,nu1503
RUN dotnet build --no-restore -c Release

WORKDIR "../applications/AuthServer.Host"
RUN dotnet restore -s http://nuget.juniux.com -s https://api.nuget.org/v3/index.json -nowarn:msb3202,nu1503
RUN dotnet build --no-restore -c Release

FROM build AS final
WORKDIR /src
COPY --from=build ../microservices/ProductService.Host ./ProductService.Host
COPY --from=build ../applications/AuthServer.Host ./AuthServer.Host
COPY --from=build entrypoint.sh .
RUN /bin/bash -c "sed -i $'s/\r$//' entrypoint.sh"
RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
