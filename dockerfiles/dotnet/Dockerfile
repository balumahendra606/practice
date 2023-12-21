FROM ubuntu:22.04 as unzip
RUN mkdir nop
RUN apt update && \
    apt install wget unzip -y && \
    cd /nop && \
    wget https://github.com/nopSolutions/nopCommerce/releases/download/release-4.60.5/nopCommerce_4.60.5_NoSource_linux_x64.zip && \
    unzip /nop/nopCommerce_4.60.5_NoSource_linux_x64.zip && \
    rm /nop/nopCommerce_4.60.5_NoSource_linux_x64.zip

FROM mcr.microsoft.com/dotnet/aspnet:6.0
LABEL author="balumahendra"
COPY --from=unzip /nop /nop
WORKDIR /nop
EXPOSE 80
CMD [ "dotnet","/nop/Nop.Web.dll"]

