import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure MartensiteTransformationPackage where
  martensiteStartTemperature : Prop
  martensiteFinishTemperature : Prop
  latticeShear : Prop
  habitPlane : Prop
  volumeFraction : Prop

structure MartensiteTransformationEvidence (M : MartensiteTransformationPackage) where
  martensiteStartTemperatureClosed : M.martensiteStartTemperature
  martensiteFinishTemperatureClosed : M.martensiteFinishTemperature
  latticeShearClosed : M.latticeShear
  habitPlaneClosed : M.habitPlane
  volumeFractionClosed : M.volumeFraction

def MartensiteTransformationClosed (M : MartensiteTransformationPackage) : Prop :=
  M.martensiteStartTemperature ∧ M.martensiteFinishTemperature ∧
  M.latticeShear ∧ M.habitPlane ∧ M.volumeFraction

theorem martensite_transformation_closed_from_evidence (M : MartensiteTransformationPackage) (E : MartensiteTransformationEvidence M) :
    MartensiteTransformationClosed M := by
  exact And.intro E.martensiteStartTemperatureClosed
    (And.intro E.martensiteFinishTemperatureClosed
      (And.intro E.latticeShearClosed
        (And.intro E.habitPlaneClosed E.volumeFractionClosed)))

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse