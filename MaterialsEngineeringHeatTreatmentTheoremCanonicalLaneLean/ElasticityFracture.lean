import MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean.Crystallography

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure ElasticityFracturePackage where
  elasticModulus : Prop
  yieldStrength : Prop
  fractureToughness : Prop
  fatigueLife : Prop

structure ElasticityFractureEvidence (E : ElasticityFracturePackage) where
  elasticModulusClosed : E.elasticModulus
  yieldStrengthClosed : E.yieldStrength
  fractureToughnessClosed : E.fractureToughness
  fatigueLifeClosed : E.fatigueLife

def ElasticityFractureClosed (E : ElasticityFracturePackage) : Prop :=
  E.elasticModulus ∧ E.yieldStrength ∧ E.fractureToughness ∧ E.fatigueLife

theorem elasticity_fracture_closed_from_evidence (E : ElasticityFracturePackage) (Ev : ElasticityFractureEvidence E) :
    ElasticityFractureClosed E := by
  exact And.intro Ev.elasticModulusClosed (And.intro Ev.yieldStrengthClosed (And.intro Ev.fractureToughnessClosed Ev.fatigueLifeClosed))

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse