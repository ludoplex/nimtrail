
const
  cxheader = ""
import
  cxstd / stringfwd

import
  cxstd / stringfwd

import
  sourcetrail / name_hierarchy

import
  sourcetrail / definition_kind

import
  sourcetrail / symbol_kind

import
  sourcetrail / source_range

import
  sourcetrail / reference_kind

type
  DatabaseStorage* {.importcpp: r"sourcetrail::DatabaseStorage", header: cxheader.} = object
  
type
  SourcetrailDBWriter* {.importcpp: r"sourcetrail::SourcetrailDBWriter",
                        header: cxheader.} = object
  
proc getVersionString*(self: SourcetrailDBWriter): StdString {.
    importcpp: "#.getVersionString(@)", header: cxheader.}
proc getSupportedDatabaseVersion*(self: SourcetrailDBWriter): cint {.
    importcpp: "#.getSupportedDatabaseVersion(@)", header: cxheader.}
proc getLastError*(self: SourcetrailDBWriter): StdString {.
    importcpp: "#.getLastError(@)", header: cxheader.}
proc setLastError*(self: SourcetrailDBWriter; error: StdString): void {.
    importcpp: "#.setLastError(@)", header: cxheader.}
proc clearLastError*(self: var SourcetrailDBWriter): void {.
    importcpp: "#.clearLastError(@)", header: cxheader.}
proc open*(self: var SourcetrailDBWriter; databaseFilePath: StdString): bool {.
    importcpp: "#.open(@)", header: cxheader.}
proc close*(self: var SourcetrailDBWriter): bool {.importcpp: "#.close(@)",
    header: cxheader.}
proc clear*(self: var SourcetrailDBWriter): bool {.importcpp: "#.clear(@)",
    header: cxheader.}
proc isEmpty*(self: SourcetrailDBWriter): bool {.importcpp: "#.isEmpty(@)",
    header: cxheader.}
proc isCompatible*(self: SourcetrailDBWriter): bool {.
    importcpp: "#.isCompatible(@)", header: cxheader.}
proc getLoadedDatabaseVersion*(self: SourcetrailDBWriter): cint {.
    importcpp: "#.getLoadedDatabaseVersion(@)", header: cxheader.}
proc beginTransaction*(self: var SourcetrailDBWriter): bool {.
    importcpp: "#.beginTransaction(@)", header: cxheader.}
proc commitTransaction*(self: var SourcetrailDBWriter): bool {.
    importcpp: "#.commitTransaction(@)", header: cxheader.}
proc rollbackTransaction*(self: var SourcetrailDBWriter): bool {.
    importcpp: "#.rollbackTransaction(@)", header: cxheader.}
proc optimizeDatabaseMemory*(self: var SourcetrailDBWriter): bool {.
    importcpp: "#.optimizeDatabaseMemory(@)", header: cxheader.}
proc recordSymbol*(self: var SourcetrailDBWriter;
                  nameHierarchy: sourcetrail::NameHierarchy): cint {.
    importcpp: "#.recordSymbol(@)", header: cxheader.}
proc recordSymbolDefinitionKind*(self: var SourcetrailDBWriter; symbolId: cint;
                                definitionKind: sourcetrail::DefinitionKind): bool {.
    importcpp: "#.recordSymbolDefinitionKind(@)", header: cxheader.}
proc recordSymbolKind*(self: var SourcetrailDBWriter; symbolId: cint;
                      symbolKind: sourcetrail::SymbolKind): bool {.
    importcpp: "#.recordSymbolKind(@)", header: cxheader.}
proc recordSymbolLocation*(self: var SourcetrailDBWriter; symbolId: cint;
                          location: sourcetrail::SourceRange): bool {.
    importcpp: "#.recordSymbolLocation(@)", header: cxheader.}
proc recordSymbolScopeLocation*(self: var SourcetrailDBWriter; symbolId: cint;
                               location: sourcetrail::SourceRange): bool {.
    importcpp: "#.recordSymbolScopeLocation(@)", header: cxheader.}
proc recordSymbolSignatureLocation*(self: var SourcetrailDBWriter; symbolId: cint;
                                   location: sourcetrail::SourceRange): bool {.
    importcpp: "#.recordSymbolSignatureLocation(@)", header: cxheader.}
proc recordReference*(self: var SourcetrailDBWriter; contextSymbolId: cint;
                     referencedSymbolId: cint;
                     referenceKind: sourcetrail::ReferenceKind): cint {.
    importcpp: "#.recordReference(@)", header: cxheader.}
proc recordReferenceLocation*(self: var SourcetrailDBWriter; referenceId: cint;
                             location: sourcetrail::SourceRange): bool {.
    importcpp: "#.recordReferenceLocation(@)", header: cxheader.}
proc recordReferenceIsAmbiuous*(self: var SourcetrailDBWriter; referenceId: cint): bool {.
    importcpp: "#.recordReferenceIsAmbiuous(@)", header: cxheader.}
proc recordReferenceToUnsolvedSymhol*(self: var SourcetrailDBWriter;
                                     contextSymbolId: cint;
                                     referenceKind: sourcetrail::ReferenceKind;
                                     location: sourcetrail::SourceRange): cint {.
    importcpp: "#.recordReferenceToUnsolvedSymhol(@)", header: cxheader.}
proc recordQualifierLocation*(self: var SourcetrailDBWriter;
                             referencedSymbolId: cint;
                             location: sourcetrail::SourceRange): bool {.
    importcpp: "#.recordQualifierLocation(@)", header: cxheader.}
proc recordFile*(self: var SourcetrailDBWriter; filePath: StdString): cint {.
    importcpp: "#.recordFile(@)", header: cxheader.}
proc recordFileLanguage*(self: var SourcetrailDBWriter; fileId: cint;
                        languageIdentifier: StdString): bool {.
    importcpp: "#.recordFileLanguage(@)", header: cxheader.}
proc recordLocalSymbol*(self: var SourcetrailDBWriter; name: StdString): cint {.
    importcpp: "#.recordLocalSymbol(@)", header: cxheader.}
proc recordLocalSymbolLocation*(self: var SourcetrailDBWriter; localSymbolId: cint;
                               location: sourcetrail::SourceRange): bool {.
    importcpp: "#.recordLocalSymbolLocation(@)", header: cxheader.}
proc recordAtomicSourceRange*(self: var SourcetrailDBWriter;
                             sourceRange: sourcetrail::SourceRange): bool {.
    importcpp: "#.recordAtomicSourceRange(@)", header: cxheader.}
proc recordError*(self: var SourcetrailDBWriter; message: StdString; fatal: bool;
                 location: sourcetrail::SourceRange): bool {.
    importcpp: "#.recordError(@)", header: cxheader.}