import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure PhaseDiagramCrystallographyPackage where
  phases : List String
  transformations : List String
  equilibriumConditions : Prop
  nucleationBarriers : Prop
  grainGrowthMechanisms : Prop

structure PhaseDiagramCrystallographyEvidence (P : PhaseDiagramCrystallographyPackage) where
  equilibriumConditionsClosed : P.equilibriumConditions
  nucleationBarriersClosed : P.nucleationBarriers
  grainGrowthMechanismsClosed : P.grainGrowthMechanisms

def PhaseDiagramCrystallographyClosed (P : PhaseDiagramCrystallographyPackage) : Prop :=
  P.equilibriumConditions ∧ P.nucleationBarriers ∧ P.grainGrowthMechanisms

theorem phase_diagram_crystallography_closed_from_evidence
    (P : PhaseDiagramCrystallographyPackage) (E : PhaseDiagramCrystallographyEvidence P) :
    PhaseDiagramCrystallographyClosed P := by
  exact And.intro E.equilibriumConditionsClosed
    (And.intro E.nucleationBarriersClosed E.grainGrowthMechanismsClosed)

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse