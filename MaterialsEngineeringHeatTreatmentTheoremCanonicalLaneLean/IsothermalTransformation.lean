import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure IsothermalTransformationPackage where
  temperature : Type u
  time : Type v
  phaseFractions : Type w
  nucleationRate : Prop
  growthRate : Prop
  avramiEquation : Prop

structure IsothermalTransformationEvidence (I : IsothermalTransformationPackage) where
  nucleationRateClosed : I.nucleationRate
  growthRateClosed : I.growthRate
  avramiEquationClosed : I.avramiEquation

def IsothermalTransformationClosed (I : IsothermalTransformationPackage) : Prop :=
  I.nucleationRate ∧ I.growthRate ∧ I.avramiEquation

theorem isothermal_transformation_closed_from_evidence (I : IsothermalTransformationPackage) (E : IsothermalTransformationEvidence I) :
    IsothermalTransformationClosed I := by
  exact And.intro E.nucleationRateClosed (And.intro E.growthRateClosed E.avramiEquationClosed)

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse