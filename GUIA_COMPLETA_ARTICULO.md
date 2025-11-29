# 📚 GUÍA COMPLETA: Cómo Rellenar tu Artículo LaTeX

---

## 📋 TABLA DE CONTENIDOS
1. [Configuración inicial](#1-configuración-inicial)
2. [Estructura de secciones](#2-estructura-de-secciones)
3. [Cómo insertar gráficas](#3-cómo-insertar-gráficas)
4. [Cómo insertar tablas](#4-cómo-insertar-tablas)
5. [Cómo insertar código](#5-cómo-insertar-código)
6. [Cómo insertar referencias](#6-cómo-insertar-referencias-bibliográficas)
7. [Ecuaciones y fórmulas](#7-ecuaciones-y-fórmulas)
8. [Compilar el artículo](#8-compilar-el-artículo)

---

## 1. CONFIGURACIÓN INICIAL

### Editar los metadatos del artículo

Antes de escribir contenido, configura los metadatos en uno de los archivos principales:
- `main_ieee.tex` (formato IEEE)
- `main_acm.tex` (formato ACM)
- `main_apa7.tex` (formato APA7)

#### Ejemplo para `main_acm.tex`:

```tex
% Título del artículo
\title[Título corto]{Título completo: Plantilla multi-formato para investigación aplicada}

% Primer autor
\author{Sergio García}
\affiliation{%
  \institution{Universidad del Huila}
  \city{Neiva}
  \country{Colombia}}
\email{sergio.garcia@unihuilah.edu.co}

% Segundo autor (opcional)
\author{Daniel Bata}
\affiliation{%
  \institution{Universidad del Huila}
  \city{Neiva}
  \country{Colombia}}
\email{daniel.bata@unihuilah.edu.co}

% Palabras clave
\keywords{feature toggles, DevOps, CI/CD, ingeniería de software, Portal Agro-Comercial}
```

#### Ejemplo para `main_ieee.tex`:

```tex
\documentclass[conference]{IEEEtran}

\title{Estrategia de Despliegue basada en Feature Toggles:\\
       Caso de Estudio: Portal Agro-Comercial del Huila}

\author{\IEEEauthorblockN{Sergio García$^{1}$, Daniel Bata$^{2}$}
\IEEEauthorblockA{$^{1}$$^{2}$Universidad del Huila, Neiva, Colombia\\
sergio.garcia@unihuilah.edu.co, daniel.bata@unihuilah.edu.co}}

\begin{document}
\maketitle
\end{document}
```

---

## 2. ESTRUCTURA DE SECCIONES

### 2.1 Resumen (00_abstract.tex)

**¿Qué es?** Síntesis breve (150-250 palabras) de todo el artículo.

**Estructura recomendada:**
- Contexto del problema
- Objetivo de la investigación
- Métodos empleados
- Resultados principales
- Conclusión/Impacto

**Ejemplo para tu artículo:**

```tex
Este artículo presenta la aplicación de una estrategia de despliegue basada 
en \textit{feature toggles} en el proyecto formativo "Portal Agro-Comercial 
del Huila", una plataforma digital desarrollada para conectar a productores 
agropecuarios con consumidores en Colombia.

El principal desafío radica en que el sistema inicia como prototipo en un 
municipio y se expande progresivamente a toda la región. Para abordarlo, 
se realizó un análisis de veinte estudios académicos sobre \textit{feature 
toggles}, DevOps y despliegues canary.

Los resultados demuestran que los \textit{feature toggles} permiten no solo 
actuar como estructuras condicionales, sino como mecanismo arquitectónico 
para controlar funcionalidades, habilitar CI/CD y segmentación por roles. 
La metodología propuesta reduce riesgo de despliegue y favorece evolución 
sostenible del software.
```

---

### 2.2 Introducción (01_introduccion.tex)

**¿Qué es?** Presentación del problema, justificación e hipótesis.

**Estructura recomendada:**
1. **Contexto**: Situación actual del problema
2. **Problema**: ¿Qué falta o qué es difícil?
3. **Preguntas de investigación**: ¿Qué queremos saber?
4. **Objetivos**: General y específicos
5. **Contribuciones**: ¿Qué aporta este artículo?

**Ejemplo:**

```tex
\section{Introducción}

\subsection{Contexto}
El Portal Agro-Comercial del Huila es una iniciativa para digitalizar 
la cadena de valor agropecuaria en la región. Como proyecto educativo, 
enfrenta desafíos únicos: evoluciona continuamente, tiene múltiples 
stakeholders con necesidades divergentes, y debe mantenerse estable 
en producción mientras se agregan nuevas funcionalidades.

\subsection{Problema}
Los despliegues tradicionales presentan riesgos:
\begin{itemize}
    \item Downtime durante actualización de código
    \item Imposibilidad de revertir cambios rápidamente
    \item Dificultad para probar en producción con usuarios reales
    \item Falta de control granular sobre qué usuarios ven qué versión
\end{itemize}

\subsection{Objetivo General}
Analizar cómo implementar \textit{feature toggles} como mecanismo 
para despliegues de bajo riesgo en contextos de innovación rural.

\subsection{Objetivos Específicos}
\begin{enumerate}
    \item Revisar sistemáticamente literatura sobre \textit{feature toggles}
    \item Diseñar arquitectura con toggles en Portal Agro-Comercial
    \item Implementar despliegues canary y segmentación por roles
    \item Evaluar reducción de riesgo y mejora en CI/CD
\end{enumerate}
```

---

### 2.3 Trabajos Relacionados (02_relacionados.tex)

**¿Qué es?** Revisión de investigaciones previas y posicionamiento del trabajo.

**Estructura recomendada:**
1. **Panorama general**: ¿Qué se sabe del tema?
2. **Categorías temáticas**: Agrupar trabajos por tema
3. **Comparación con tu trabajo**: ¿Qué es nuevo?

**Ejemplo:**

```tex
\section{Trabajos Relacionados}

\subsection{Feature Toggles en Industria}
\label{sec:related-toggles}

Rahman y Rigby \cite{rahman2016msr} condujeron un estudio empiríco 
en proyectos open-source mostrando que \textit{feature toggles} 
son ampliamente usados para gestionar complejidad en despliegues. 
Sin embargo, su trabajo no aborda contextos educativos de innovación rural.

Sridharan et al. \cite{sridharan2020piranha} presentan Piranha, 
herramienta de Uber para reducir "deuda técnica" generada por toggles 
obsoletos. Este trabajo es relevante para nuestra estrategia de limpieza 
de código.

\subsection{CI/CD y Despliegues Canary}
\label{sec:related-cicd}

Meyer \cite{meyer2016continuous} documenta principios de entrega 
continua, incluyendo despliegues canary gradientes. Nuestro trabajo 
extiende estos principios al contexto de sistemas de bajo riesgo.

\subsection{Diferenciación con Nuestro Trabajo}
\label{sec:differentiation}

A diferencia de trabajos previos que enfocan toggles en contextos 
corporativos (Google, Uber, Microsoft), nuestro artículo:
\begin{itemize}
    \item Aplica toggles a proyectos educativos y rurales
    \item Integra toggles con segmentación por roles de usuario
    \item Propone arquitectura específica para sistemas evolutivos
    \item Incluye checklist reproducible para otros equipos
\end{itemize}
```

**📌 Nota:** Cita siempre con `\cite{clave}` (la clave viene del .bib).

---

### 2.4 Metodología (03_metodologia.tex)

**¿Qué es?** Describe cómo hiciste la investigación.

**Estructura recomendada:**
1. **Diseño de investigación**: Tipo de estudio (empírico, teórico, caso de estudio)
2. **Población**: ¿A qué aplica?
3. **Recogida de datos**: ¿Cómo obtuviste información?
4. **Análisis**: ¿Cómo procesaste los datos?

**Ejemplo:**

```tex
\section{Metodología}

\subsection{Diseño de Investigación}
Realizamos un \textit{caso de estudio} siguiendo el protocolo de Yin (2018). 
Este enfoque es apropiado cuando necesitas entender un fenómeno complejo 
en su contexto real (Portal Agro-Comercial del Huila).

\subsection{Población y Muestra}
\label{sec:population}

Analizamos:
\begin{itemize}
    \item 20 artículos académicos e industriales sobre \textit{feature toggles}
    \item Codebase del Portal (5 repositorios en GitHub)
    \item 3 despliegues canary en producción (período: enero-junio 2024)
    \item 15 entrevistas semi-estructuradas con desarrolladores y usuarios
\end{itemize}

\subsection{Recogida de Datos}

\textbf{Revisión Sistemática de Literatura:}
\begin{enumerate}
    \item Búsqueda en ACM Digital Library, IEEE Xplore, arXiv
    \item Criterios de inclusión: años 2015-2025, feature toggles + DevOps
    \item Screening inicial: 150 artículos → 20 seleccionados
\end{enumerate}

\textbf{Análisis Técnico del Código:}
Extrajimos métricas usando herramientas como SonarQube:
\begin{itemize}
    \item Complejidad ciclomática del código con toggles
    \item Número de toggles activos/inactivos
    \item Deuda técnica introducida
\end{itemize}

\textbf{Análisis Cualitativo:}
Entrevistas con desarrolladores para entender:
\begin{itemize}
    \item Dificultades en implementación de toggles
    \item Impacto en ciclo de desarrollo
    \item Percepción de riesgo en despliegues
\end{itemize}

\subsection{Análisis de Datos}

Para datos cuantitativos: estadística descriptiva (media, desviación estándar).

Para datos cualitativos: codificación temática siguiendo Braun y Clarke (2006).
```

---

### 2.5 Implementación (04_implementacion.tex)

**¿Qué es?** Detalles técnicos de cómo lo hiciste.

**Estructura recomendada:**
1. **Arquitectura**: Diagrama + explicación
2. **Herramientas**: Tecnologías usadas
3. **Código clave**: Fragmentos importantes
4. **Configuración**: Pasos para reproducir

**Ejemplo:**

```tex
\section{Implementación}

\subsection{Arquitectura de Feature Toggles}

Implementamos toggles en tres niveles:

\begin{enumerate}
    \item \textbf{Toggle de Configuración:} Activar/desactivar en tiempo real 
    desde base de datos Redis
    \item \textbf{Toggle de Libería:} Condicionales en el código (si activado, 
    ejecutar lógica nueva)
    \item \textbf{Toggle de Permiso:} Basado en rol de usuario 
    (admin, vendedor, consumidor)
\end{enumerate}

Consulta el diagrama en la Figura~\ref{fig:architecture}.

\subsection{Herramientas Utilizadas}

\begin{table}[htbp]
\centering
\caption{Stack Tecnológico}
\label{tab:stack}
\begin{tabular}{lll}
\toprule
\textbf{Componente} & \textbf{Herramienta} & \textbf{Versión} \\
\midrule
Backend & Node.js + Express & 18.17.0 \\
Toggle Service & LaunchDarkly & SaaS \\
Base de Datos & PostgreSQL & 14.5 \\
Cache & Redis & 7.0 \\
CI/CD & GitHub Actions & - \\
Container & Docker & 24.0 \\
\bottomrule
\end{tabular}
\end{table}

\subsection{Código: Implementación de Toggle}

Ejemplo de cómo usamos toggles en el backend:

\begin{lstlisting}[language=JavaScript,caption={Middleware de Toggle en Express}]
app.get('/productos', async (req, res) => {
  const usuario = req.user;
  const features = await client.allFlags(usuario);
  
  if (features['nuevoCatalogo']) {
    // Usar nuevo endpoint de catálogo
    const productos = await getCatalogoV2(usuario);
  } else {
    // Usar catálogo antiguo
    const productos = await getCatalogoV1(usuario);
  }
  
  res.json(productos);
});
\end{lstlisting}

\subsection{Reproducción}

Para reproducir el setup:

\begin{lstlisting}[language=bash]
# 1. Clonar repositorio
git clone https://github.com/DanielBata25/portal-agro.git
cd portal-agro

# 2. Instalar dependencias
npm install

# 3. Configurar variables de entorno
cp .env.example .env
# Editar .env con tus credenciales de LaunchDarkly

# 4. Iniciar con Docker
docker-compose up -d

# 5. Ejecutar migraciones
npm run db:migrate

# 6. Iniciar servidor
npm run dev
\end{lstlisting}
```

---

### 2.6 Resultados (05_resultados.tex)

**¿Qué es?** Presenta hallazgos sin interpretación (solo datos y hechos).

**Estructura recomendada:**
1. **RQ1**: Primera pregunta de investigación + datos
2. **RQ2**: Segunda pregunta de investigación + datos
3. **Gráficas y tablas**: Visualización de datos

**Ejemplo:**

```tex
\section{Resultados}

\subsection{RQ1: ¿Cuál es el impacto de toggles en complejidad de código?}
\label{sec:rq1}

Analizamos 8,542 commits en el repositorio del Portal durante 6 meses. 
La Tabla~\ref{tab:complexity} muestra métricas antes/después de implementar 
toggles:

\begin{table}[htbp]
\centering
\caption{Impacto de Toggles en Complejidad Ciclomática}
\label{tab:complexity}
\small
\begin{tabular}{lcc}
\toprule
\textbf{Métrica} & \textbf{Sin Toggles} & \textbf{Con Toggles} \\
\midrule
Complejidad Ciclomática Promedio & 4.2 & 4.8 \\
Máxima Complejidad por Función & 18 & 22 \\
Deuda Técnica (horas) & 240 & 310 \\
Tiempo de Review (minutos) & 15 & 18 \\
\bottomrule
\end{tabular}
\end{table}

Observamos un incremento de 14\% en complejidad. Sin embargo, esto fue 
aceptable considerando los beneficios en despliegue sin downtime.

\subsection{RQ2: ¿Reducen los toggles el riesgo de despliegue?}
\label{sec:rq2}

Ejecutamos 47 despliegues canary en 6 meses. La Figura~\ref{fig:deployment} 
muestra la tasa de rollback:

\includegraphics[width=0.48\textwidth]{graphics/deployment_success_rate.pdf}

% En texto:
- Despliegues exitosos: 45/47 (95.7\%)
- Rollbacks: 2/47 (4.3\%)
- Antes (sin toggles): 28/35 (80\%)

Esto representa una \textbf{reducción de riesgo del 19.6\%}.

\subsection{RQ3: ¿Es práctico para contextos educativos?}

Entrevistamos a 15 desarrolladores (estudiantes y profesores). Escala 1-5:

\begin{table}[htbp]
\centering
\caption{Percepción de Toggles (Media de respuestas)}
\label{tab:perception}
\begin{tabular}{lc}
\toprule
\textbf{Pregunta} & \textbf{Calificación} \\
\midrule
Facilidad de uso & 3.8/5 \\
Tiempo de aprendizaje & 3.5/5 \\
Beneficio percibido & 4.2/5 \\
Recomendaría para otros proyectos & 4.4/5 \\
\bottomrule
\end{tabular}
\end{table}
```

---

### 2.7 Discusión (06_discusion.tex)

**¿Qué es?** Interpreta resultados, reconoce limitaciones, sugiere mejoras.

**Estructura recomendada:**
1. **Interpretación**: ¿Qué significan los resultados?
2. **Limitaciones**: ¿Qué no pudiste hacer?
3. **Implicaciones**: ¿Qué es importante?
4. **Comparación con relacionados**: ¿Cómo se compara con otros?

**Ejemplo:**

```tex
\section{Discusión}

\subsection{Interpretación de Resultados}

El incremento de 14\% en complejidad ciclomática es esperado cuando 
se introducen condicionales. Sin embargo, este costo es justificable 
considerando que:

\begin{itemize}
    \item El riesgo de despliegue se redujo 19.6\%
    \item El tiempo de recuperación ante fallos es < 2 minutos
    \item Permite experimentación controlada con usuarios reales
\end{itemize}

\subsection{Limitaciones}

\textbf{1. Escala Pequeña:} Portal Agro atiende ~500 usuarios. 
Los resultados pueden variar en sistemas con millones de usuarios.

\textbf{2. Duración del Estudio:} 6 meses es período corto. 
Efectos a largo plazo de "deuda por toggles" requieren más tiempo.

\textbf{3. Contexto Específico:} Resultados aplicables principalmente 
a proyectos educativos. Contextos corporativos pueden tener restricciones 
diferentes.

\subsection{Comparación con Trabajos Relacionados}

Rahman et al. \cite{rahman2016msr} reportaron 85\% de despliegues exitosos 
en sistemas con toggles. Nuestro 95.7\% es significativamente mejor, 
probablemente porque usamos herramienta especializada (LaunchDarkly) 
frente a toggles manual implementados por Rahman.

Sridharan et al. \cite{sridharan2020piranha} reportaron "deuda por toggles" 
de hasta 40\% en Uber. En nuestro caso fue 14\%, posiblemente por cantidad 
más pequeña de toggles (15 activos vs cientos en Uber).

\subsection{Implicaciones Prácticas}

\textbf{Para educadores:} Feature toggles son viables en proyectos educativos. 
Requieren inversión inicial pero mejoran radicalmente confiabilidad.

\textbf{Para empresas rurales:} Adoptar toggles reduce riesgo de fallos, 
crucial cuando la infraestructura es limitada.

\textbf{Para desarrolladores:} El overhead de gestionar toggles (~2 horas 
por desarrollador/semana) es aceptable para proyectos que requieren 
alta disponibilidad.
```

---

### 2.8 Conclusiones (07_conclusiones.tex)

**¿Qué es?** Síntesis final, recomendaciones y trabajo futuro.

**Estructura recomendada:**
1. **Síntesis**: Resumen breve de hallazgos
2. **Recomendaciones**: ¿Qué deberían hacer otros?
3. **Trabajo futuro**: ¿Qué falta investigar?

**Ejemplo:**

```tex
\section{Conclusiones}

Este artículo demuestra que \textit{feature toggles} son mecanismo efectivo 
para despliegues de bajo riesgo en contextos educativos, específicamente 
en el Portal Agro-Comercial del Huila.

\subsection{Hallazgos Principales}

\begin{enumerate}
    \item Los toggles incrementan complejidad pero reducen riesgo de despliegue 
    en 19.6\%
    \item Son viables en contextos educativos con mínima curva de aprendizaje
    \item Permiten despliegues canary y segmentación por roles de usuario
    \item Reducen MTTR (Mean Time To Recovery) a < 2 minutos
\end{enumerate}

\subsection{Recomendaciones}

\begin{itemize}
    \item \textbf{Para equipos de software:} Implementar toggles en sistemas 
    evolutivos con múltiples stakeholders
    \item \textbf{Para educadores:} Incluir feature toggles en currículo 
    de ingeniería de software
    \item \textbf{Para empresas rurales:} Usar toggles como estrategia 
    de riesgo en infraestructura limitada
\end{itemize}

\subsection{Trabajo Futuro}

\begin{enumerate}
    \item Extender estudio a 18 meses para evaluar deuda técnica a largo plazo
    \item Implementar Piranha \cite{sridharan2020piranha} para limpieza automática 
    de toggles inactivos
    \item Evaluar toggles en otros 3 proyectos educativos similares
    \item Desarrollar herramienta open-source especializada en contextos rurales
\end{enumerate}

\subsection{Impacto Esperado}

Este trabajo contribuye a la brecha de conocimiento en despliegues seguros 
para innovación rural. Esperamos que otros equipos educativos lo adopten 
como referencia para sus propios proyectos.
```

---

## 3. CÓMO INSERTAR GRÁFICAS

### 3.1 Preparar la gráfica

1. **Exportar como PDF o PNG** desde herramienta (Excel, Python matplotlib, R, Tableau, etc.)
2. **Guardar en** `graphics/` con nombre descriptivo: `deployment_success_rate.pdf`

### 3.2 Insertar gráfica en LaTeX

```tex
\begin{figure}[htbp]
\centering
\includegraphics[width=0.48\textwidth]{graphics/deployment_success_rate.pdf}
\caption{Tasa de éxito en despliegues canary}
\label{fig:deployment}
\end{figure}
```

### 3.3 Tamaños recomendados

| Formato | Ancho Máximo | Notas |
|---------|-------------|-------|
| **IEEE** (2 columnas) | 0.48\textwidth | Máximo para ajustarse |
| **ACM/APA7** (1 columna) | 0.7\textwidth | Pueden ser más grandes |
| **Gráficas complejas** | 0.45\textwidth | Radar, heatmaps |
| **A página completa** | 0.95\textwidth | Solo si es crítica |

### 3.4 Generar gráficas automáticamente con Python

El archivo `code/generate_figures.py` es para esto:

```python
import matplotlib.pyplot as plt
import numpy as np

# Datos
categories = ['Exitosos', 'Rollback', 'En Progreso']
values = [45, 2, 0]
colors = ['#2ecc71', '#e74c3c', '#f39c12']

# Crear gráfica
plt.figure(figsize=(8, 6))
plt.bar(categories, values, color=colors)
plt.title('Despliegues Canary (6 meses)', fontsize=14, fontweight='bold')
plt.ylabel('Cantidad', fontsize=12)
plt.xlabel('Estado', fontsize=12)

# Guardar como PDF y PNG
plt.savefig('graphics/deployment_success_rate.pdf', dpi=300, bbox_inches='tight')
plt.savefig('graphics/deployment_success_rate.png', dpi=300, bbox_inches='tight')
plt.close()

print("✓ Gráficas generadas")
```

Ejecutar:
```bash
python code/generate_figures.py
```

---

## 4. CÓMO INSERTAR TABLAS

### 4.1 Tabla simple

```tex
\begin{table}[htbp]  % h=aquí, t=arriba, b=abajo, p=página propia
\centering
\caption{Comparación de Frameworks}
\label{tab:frameworks}
\small  % Hace el texto más pequeño
\begin{tabular}{lccc}  % l=izquierda, c=centro, r=derecha
\toprule
\textbf{Framework} & \textbf{Lenguaje} & \textbf{Performance} & \textbf{Score} \\
\midrule
React & JavaScript & Alta & 9.2 \\
Angular & TypeScript & Alta & 8.7 \\
Vue.js & JavaScript & Alta & 8.9 \\
Django & Python & Media & 8.5 \\
\bottomrule
\end{tabular}
\end{table}
```

### 4.2 Tabla compleja con más detalles

```tex
\begin{table*}[htbp]  % * = usa ambas columnas en IEEE
\centering
\caption{Análisis detallado de herramientas para feature toggles}
\label{tab:toggle_tools}
\small
\begin{tabular}{lcccccc}
\toprule
\textbf{Herramienta} & \textbf{Precio} & \textbf{API} & \textbf{Canary} 
& \textbf{A/B Test} & \textbf{Roles} & \textbf{Open-Source} \\
\midrule
LaunchDarkly & \$$ & REST & ✓ & ✓ & ✓ & ✗ \\
Unleash & \$ & REST & ✓ & ✓ & ✓ & ✓ \\
Split.io & \$\$ & SDK & ✓ & ✓ & ✓ & ✗ \\
Flagsmith & \$ & REST & ✓ & ✗ & ✓ & ✓ \\
\bottomrule
\end{tabular}
\end{table*}
```

### 4.3 Insertar tabla desde archivo externo

Si tienes tabla en `tables/frameworks_comparison.tex`:

```tex
% En tu sección de resultados:
\input{tables/frameworks_comparison}
```

### 4.4 Hacer tabla ancha más pequeña

```tex
\begin{table}[htbp]
\centering
\caption{Datos operacionales del Portal}
\label{tab:operational}
\footnotesize  % Texto aún más pequeño
\begin{tabular}{llcccc}
% contenido...
\end{tabular}
\end{table}
```

**Jerarquía de tamaños:**
- `\normalsize` (default)
- `\small` 
- `\footnotesize`
- `\scriptsize`

---

## 5. CÓMO INSERTAR CÓDIGO

### 5.1 Código inline (en medio del texto)

```tex
Para iniciar el servidor, ejecuta \texttt{npm run dev}.

O usando código LaTeX:
\verb|docker compose up -d|
```

### 5.2 Bloque de código con formato

```tex
\begin{lstlisting}[language=JavaScript,caption={Toggle en Express}]
if (features['newUI']) {
  // Nueva interfaz
} else {
  // Interfaz antigua
}
\end{lstlisting}
```

### 5.3 Código de archivo externo

```tex
% Si tienes código en `code/example.js`:
\lstinputlisting[language=JavaScript,
                 caption={Configuración de toggles},
                 label=code:toggles]{code/example.js}
```

### 5.4 Lenguajes soportados

```tex
language=JavaScript    % JS
language=Python        % Python
language=SQL           % SQL
language=Java          % Java
language=C             % C
language=Bash          % Bash/Shell
language=XML           % XML
language=JSON          % JSON
language=HTML          % HTML
```

### 5.5 Destacar líneas específicas

```tex
\begin{lstlisting}[
  language=Python,
  caption={Script de migración},
  highlightlines={5,6,7}  % Líneas a destacar
]
def migrate_toggles():
    db.connect()
    for toggle in old_toggles:
        # Procesar toggle
        new_config = transform(toggle)  % Destacada
        db.insert(new_config)           % Destacada
        log.info(f"Migrado: {toggle}")  % Destacada
\end{lstlisting}
```

---

## 6. CÓMO INSERTAR REFERENCIAS BIBLIOGRÁFICAS

### 6.1 Agregar referencias en `bibliography/references.bib`

Formato BibTeX estándar:

```bibtex
@article{clave2024,
  author    = {García, Juan and Pérez, María},
  title     = {Título del artículo},
  journal   = {Nombre de la revista},
  volume    = {10},
  number    = {3},
  pages     = {123--145},
  year      = {2024},
  doi       = {10.1234/ejemplo}
}

@inproceedings{clave2023conf,
  author    = {Smith, John and Doe, Jane},
  title     = {Título de conferencia},
  booktitle = {Proceedings of Important Conf},
  pages     = {456--478},
  year      = {2023},
  organization = {IEEE}
}

@book{clave2022libro,
  author    = {Johnson, Robert},
  title     = {Libro sobre tema importante},
  publisher = {Editorial XYZ},
  year      = {2022},
  edition   = {2nd}
}

@thesis{clave2021tesis,
  author    = {Martínez, Carlos},
  title     = {Tesis doctoral sobre algo},
  school    = {Universidad Nacional},
  year      = {2021},
  type      = {PhD thesis}
}

@online{clave2024web,
  author    = {Developer, Smart},
  title     = {Artículo en blog},
  url       = {https://ejemplo.com/articulo},
  year      = {2024},
  accessed  = {2024-11-20}
}
```

### 6.2 Citar en el texto

```tex
% Citation simple
Rahman et al. \cite{rahman2016msr} demostraron...

% Con paréntesis
Estudios recientes \cite{garcia2024,smith2023conf} indican...

% Citation múltiple
Hay consenso \cite{johnson2022libro,martinez2021tesis} sobre que...

% Con página específica (si está disponible)
Como se menciona \cite[p. 156]{johnson2022libro}...
```

### 6.3 Tipos de referencias frecuentes

| Tipo | Clave | Uso |
|------|-------|-----|
| Artículos académicos | `@article` | Journals, revistas |
| Conferencias | `@inproceedings` | Proceedings |
| Libros | `@book` | Libros completos |
| Capítulos de libro | `@incollection` | Parte de libro |
| Tesis | `@thesis` o `@mastersthesis` | Tesis universitarias |
| Websites | `@online` | Blogs, documentos web |
| Reports | `@techreport` | Reportes técnicos |

### 6.4 Citar según formato

- **IEEE**: `\cite{clave}` → [1], [2], etc.
- **ACM**: `\cite{clave}` → [Author 2024], etc.
- **APA7**: `\cite{clave}` → (Author, 2024)

---

## 7. ECUACIONES Y FÓRMULAS

### 7.1 Ecuación inline

```tex
La fórmula de complejidad es $C = e - n + 2$ donde $e$ es aristas 
y $n$ es nodos.
```

### 7.2 Ecuación en bloque

```tex
\begin{equation}
\label{eq:complexity}
C = e - n + 2
\end{equation}

Referencia: Ecuación~\ref{eq:complexity}
```

### 7.3 Sistema de ecuaciones

```tex
\begin{align}
P(Toggle) &= \frac{\text{Despliegues exitosos}}{\text{Total despliegues}} \\
Risk(T) &= 1 - P(Toggle) \\
\label{eq:risk}
\end{align}
```

### 7.4 Matriz

```tex
\begin{equation}
M = \begin{pmatrix}
a & b & c \\
d & e & f \\
g & h & i
\end{pmatrix}
\end{equation}
```

---

## 8. COMPILAR EL ARTÍCULO

### 8.1 Compilar con Docker (Recomendado - Sin instalar LaTeX)

```powershell
cd "c:\Users\varga\Documentos\proyecto-formativo\portal-agro-docs\Articulo-Sergio\articulo-aplicada (1)\articulo-aplicada"

# Opción 1: Usar batch script Windows
.\compile.bat

# Opción 2: O directamente con docker compose
docker compose run --rm latex
```

Los PDFs se generan en `build/`:
- `build/main_ieee.pdf`
- `build/main_acm.pdf`
- `build/main_apa7.pdf`

### 8.2 Compilar localmente (Si tienes LaTeX instalado)

```bash
latexmk -pdfxe -shell-escape -outdir=build main_acm.tex
```

### 8.3 Limpiar antes de recompilar

```bash
# Eliminar archivos temporales
Remove-Item -Path build\* -Exclude *.tex -Force

# Recompilar
.\compile.bat
```

### 8.4 Solucionar problemas comunes

| Error | Solución |
|-------|----------|
| `File not found: graphics/xyz.pdf` | Asegúrate que la gráfica existe en `graphics/` |
| `Undefined control sequence` | Verificar que imports en `preamble_*.tex` sean correctos |
| `Citation undefined: abc` | Verificar clave en `bibliography/references.bib` |
| `LaTeX cannot compile` | Ejecutar `docker compose build latex` para actualizar imagen |

---

## 📋 CHECKLIST FINAL

Antes de enviar tu artículo, verifica:

- [ ] ✓ Título, autores y afiliaciones completados en `main_*.tex`
- [ ] ✓ Resumen (abstract) escrito en `sections/00_abstract.tex`
- [ ] ✓ Introducción con objetivos claros en `sections/01_introduccion.tex`
- [ ] ✓ Trabajos relacionados con al menos 10 referencias en `sections/02_relacionados.tex`
- [ ] ✓ Metodología explicada en `sections/03_metodologia.tex`
- [ ] ✓ Implementación técnica en `sections/04_implementacion.tex`
- [ ] ✓ Resultados con tablas/gráficas en `sections/05_resultados.tex`
- [ ] ✓ Discusión de limitaciones en `sections/06_discusion.tex`
- [ ] ✓ Conclusiones con trabajo futuro en `sections/07_conclusiones.tex`
- [ ] ✓ Todas las referencias agregadas en `bibliography/references.bib`
- [ ] ✓ Todas las gráficas en `graphics/` con tamaños correctos
- [ ] ✓ Código importante incluido con `\lstlisting`
- [ ] ✓ PDFs generados sin errores
- [ ] ✓ Revisión ortográfica completa
- [ ] ✓ Palabras clave relevantes agregadas

---

## 🚀 EJEMPLO COMPLETO DE SECCIÓN

Aquí está el patrón que puedes copiar/pegar:

```tex
\section{Título de Sección}

\subsection{Subsección}

Primer párrafo con contexto e información clave. 
Incluye citas \cite{autor2024} cuando sea necesario.

\subsubsection{Nivel más profundo (opcional)}

Detalles técnicos o específicos.

% Insertar tabla
\input{tables/mi_tabla}

% Insertar gráfica
\begin{figure}[htbp]
\centering
\includegraphics[width=0.48\textwidth]{graphics/mi_grafica.pdf}
\caption{Descripción de la gráfica}
\label{fig:mi_grafica}
\end{figure}

% Insertar código
\begin{lstlisting}[language=Python,caption={Ejemplo de código}]
# Tu código aquí
\end{lstlisting}

\subsection{Otra subsección}

Más párrafos y análisis.

\begin{enumerate}
  \item Punto primero
  \item Punto segundo
  \item Punto tercero
\end{enumerate}
```

---

**¡Ahora estás listo para escribir tu artículo!** 🎓📝

Si tienes dudas específicas sobre alguna sección o necesitas más ejemplos, 
avísame y te ayudaré.

