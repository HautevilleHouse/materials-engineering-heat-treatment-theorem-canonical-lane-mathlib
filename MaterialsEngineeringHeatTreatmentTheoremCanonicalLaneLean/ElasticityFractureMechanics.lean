import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure ElasticityFractureMechanicsPackage where
  youngModulus : ℝ
  poissonRatio : ℝ
  fractureToughness : ℝ
  stressIntensityFactor : ℝ
  crackPropagationCriterion : Prop

structure ElasticityFractureMechanicsEvidence (E : ElasticityFractureMechanicsPackage) where
  youngModulusClosed : E.youngModulus > 0
  poissonRatioClosed : E.poissonRatio > 0 ∧ E.poissonRatio < 0.5
  fractureToughnessClosed : E.fractureToughness > 0
  stressIntensityFactorClosed : E.stressIntensityFactor > 0
  crackPropagationCriterionClosed : E.crackPropagationCriterion

def ElasticityFractureMechanicsClosed (E : ElasticityFractureMechanicsPackage) : Prop :=
  (E.youngModulus > 0) ∧ (E.poissonRatio > 0 ∧ E.poissonRatio < 0.5) ∧
  (E.fractureToughness > 0) ∧ (E.stressIntensityFactor > 0) ∧
  E.crackPropagationCriterion

theorem elasticity_fracture_mechanics_closed_from_evidence
    (E : ElasticityFractureMechanicsPackage) (Ev : ElasticityFractureMechanicsEvidence E) :
    ElasticityFractureMechanicsClosed E := by
  exact And.intro Ev.youngModulusClosed
    (And.intro Ev.poissonRatioClosed
      (And.intro Ev.fractureToughnessClosed
        (And.intro Ev.stressIntensityFactorClosed Ev.crackPropagationCriterionClosed)))

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse