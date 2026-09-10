# IASI Infraestructura

Infraestructura reproducible para crear, configurar y preparar entornos de trabajo IASI desde cero.

## ¿Qué problema resuelve?

Un proyecto no empieza cuando se escribe la primera línea de código.

Empieza antes: cuando hay que preparar una máquina, instalar herramientas, configurar dependencias, establecer convenciones y conseguir que el entorno pueda reproducirse sin depender de pasos manuales, memoria o conocimiento informal.

iasi-infra nace para convertir ese proceso en un artefacto explícito, versionado y reproducible.

## Principio

Un proyecto o cliente debe poder disponer de su propio entorno aislado y reconstruible.

El objetivo no es imponer una herramienta concreta, sino definir cómo pasar de una máquina vacía a un entorno de trabajo operativo.

La infraestructura debe poder explicar y, progresivamente, automatizar ese recorrido.

## Alcance inicial

El proyecto comenzará cubriendo la preparación de entornos IASI sobre:

Windows

máquinas virtuales

Linux

herramientas base de desarrollo

configuración común del entorno

instalación de componentes necesarios para trabajar con IASI

A partir de ahí podrá incorporar automatización, validaciones y otras formas de aprovisionamiento reproducible.

## Qué queremos conseguir

Que un entorno pueda:

crearse desde cero;

configurarse de forma conocida;

reproducirse en otra máquina;

reconstruirse si se pierde;

evolucionar mediante cambios versionados;

documentar por sí mismo cómo está construido.

## Qué no es

iasi-infra no pretende ser una colección de scripts sueltos ni una receta particular para una única máquina.

Tampoco parte de una tecnología predeterminada.

Virtualización, contenedores, gestores de paquetes o herramientas de infraestructura como código son medios posibles. La elección debe responder al problema que haya que resolver.

## Relación con IASI

iasi-infra forma parte del ecosistema IASI — Ingeniería Aumentada por Sistemas Inteligentes.

IASI parte de una idea sencilla:

No adoptamos metodologías para resolver problemas. Partimos de los problemas para descubrir la metodología.

En infraestructura ocurre lo mismo: primero definimos qué entorno necesitamos y qué propiedades debe tener; después elegimos cómo construirlo.

## Estado

Proyecto en fase inicial.

La primera meta será disponer de un procedimiento reproducible para preparar un entorno IASI completo desde una máquina nueva, comenzando por Windows y extendiéndolo posteriormente a Linux.

IASIIngeniería Aumentada por Sistemas Inteligentes
