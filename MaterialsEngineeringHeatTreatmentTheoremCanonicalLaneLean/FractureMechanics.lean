import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Prop
  fractureToughness : Prop
  crackGrowth : Prop
  fatigueLife : Prop
  fractureModes : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  crackGrowthClosed : F.crackGrowth
  fatigueLifeClosed : F.fatigueLife
  fractureModesClosed : F.fractureModes

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.stressIntensityFactor ∧ F.fractureToughness ∧ F.crackGrowth ∧ F.fatigueLife ∧ F.fractureModes

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.stressIntensityFactorClosed (And.intro E.fractureToughnessClosed (And.intro E.crackGrowthClosed (And.intro E.fatigueLifeClosed E.fractureModesClosed)))

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse