# AIDO Documentation Standard

Create two files per completed module:
1. `.aido/modules/<module>.md`
2. `.aido/reports/<module>-doc-coverage.md`

## Module Doc Template

```md
# <module>

## purpose
...

## user flow
...

## related files
...

## components
...

## API endpoints
...

## services/helpers
...

## database/schema
...

## validation
...

## auth/session behavior
...

## error handling
...

## security notes
...

## tests
...

## extension notes
...

## known limitations
...
```

## Coverage Report Template

```md
# <module> doc coverage

- documented sections: <count>/14
- missing sections: <list or none>
- source files reviewed: <list>
- test artifacts linked: <list>
- risks from undocumented behavior: <list>
```

## Quality Rules
- Use factual statements tied to code behavior.
- Mark unknowns explicitly.
- Avoid aspirational language.
- Mention security and validation details even if minimal.
