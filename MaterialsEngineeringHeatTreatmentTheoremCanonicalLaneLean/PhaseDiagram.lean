import MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  constituents : List String
  temperatureRange : Prop
  phaseBoundaries : Prop
  eutectoidPoint : Prop
  phaseTransformationKinetics : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  constituentsClosed : P.constituents ≠ []
  temperatureRangeClosed : P.temperatureRange
  phaseBoundariesClosed : P.phaseBoundaries
  eutectoidPointClosed : P.eutectoidPoint
  phaseTransformationKineticsClosed : P.phaseTransformationKinetics

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.constituents ≠ [] ∧ P.temperatureRange ∧ P.phaseBoundaries ∧ P.eutectoidPoint ∧ P.phaseTransformationKinetics

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.constituentsClosed (And.intro E.temperatureRangeClosed (And.intro E.phaseBoundariesClosed (And.intro E.eutectoidPointClosed E.phaseTransformationKineticsClosed)))

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse