import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  alloySystem : Type u
  phases : List String
  temperatureRange : Prop
  compositionRange : Prop
  equilibriumLines : Prop
  eutecticPoint : Prop
  phaseBoundaries : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  temperatureRangeClosed : P.temperatureRange
  compositionRangeClosed : P.compositionRange
  equilibriumLinesClosed : P.equilibriumLines
  eutecticPointClosed : P.eutecticPoint
  phaseBoundariesClosed : P.phaseBoundaries

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.temperatureRange ∧ P.compositionRange ∧ P.equilibriumLines ∧ P.eutecticPoint ∧ P.phaseBoundaries

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.temperatureRangeClosed (And.intro E.compositionRangeClosed (And.intro E.equilibriumLinesClosed (And.intro E.eutecticPointClosed E.phaseBoundariesClosed)))

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse