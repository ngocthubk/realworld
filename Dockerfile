###################################################
# Stage: base
# 
# This base stage ensures all other stages are using the same base image
# and provides common configuration for all stages, such as the working dir.
###################################################
FROM node:22-alpine AS base


WORKDIR /
################## CLIENT STAGES ##################

###################################################
# Stage: client-base
#
# This stage is used as the base for the client-dev and client-build stages,
# since there are common steps needed for each.
###################################################
# FROM base AS client-base
COPY . .
# RUN npm install
# COPY client/.eslintrc.cjs client/index.html client/vite.config.js ./
# COPY client/public ./public
# COPY client/src ./src
#VOLUME /mnt/c/Windows/System32/WindowsPowerShell/v1.0
#RUN mkdir -p /mnt/c/Windows/System32/WindowsPowerShell/v1.0 && touch $_/powershell.exe && chmod -v 777 $_
RUN mkdir -p /mnt/c/Windows/System32/WindowsPowerShell/v1.0 
RUN touch /mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe
RUN chmod -R 777 /mnt/c/Windows/System32/WindowsPowerShell/v1.0
RUN npm install
CMD ["npm", "start"]