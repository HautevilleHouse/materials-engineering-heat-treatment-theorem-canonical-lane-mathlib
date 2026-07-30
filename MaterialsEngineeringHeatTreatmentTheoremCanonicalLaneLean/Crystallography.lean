import MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean.PhaseDiagram

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Prop
  grainBoundaryDynamics : Prop
  recrystallization : Prop
  textureEvolution : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeStructureClosed : C.latticeStructure
  grainBoundaryDynamicsClosed : C.grainBoundaryDynamics
  recrystallizationClosed : C.recrystallization
  textureEvolutionClosed : C.textureEvolution

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeStructure ∧ C.grainBoundaryDynamics ∧ C.recrystallization ∧ C.textureEvolution

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.latticeStructureClosed (And.intro E.grainBoundaryDynamicsClosed (And.intro E.recrystallizationClosed E.textureEvolutionClosed))

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse