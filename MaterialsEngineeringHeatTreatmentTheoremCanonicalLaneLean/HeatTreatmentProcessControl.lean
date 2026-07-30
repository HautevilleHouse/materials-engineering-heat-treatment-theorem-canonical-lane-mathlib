import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure HeatTreatmentProcessControlPackage where
  austenitizingTemperature : ℝ
  quenchingRate : ℝ
  temperingTime : ℝ
  hardnessTarget : ℝ
  temperatureUniformity : Prop
  coolingCurveControl : Prop

structure HeatTreatmentProcessControlEvidence (H : HeatTreatmentProcessControlPackage) where
  austenitizingTemperatureClosed : H.austenitizingTemperature > 800 ∧ H.austenitizingTemperature < 1100
  quenchingRateClosed : H.quenchingRate > 10
  temperingTimeClosed : H.temperingTime > 1
  hardnessTargetClosed : H.hardnessTarget > 0
  temperatureUniformityClosed : H.temperatureUniformity
  coolingCurveControlClosed : H.coolingCurveControl

def HeatTreatmentProcessControlClosed (H : HeatTreatmentProcessControlPackage) : Prop :=
  (H.austenitizingTemperature > 800 ∧ H.austenitizingTemperature < 1100) ∧
  (H.quenchingRate > 10) ∧ (H.temperingTime > 1) ∧ (H.hardnessTarget > 0) ∧
  H.temperatureUniformity ∧ H.coolingCurveControl

theorem heat_treatment_process_control_closed_from_evidence
    (H : HeatTreatmentProcessControlPackage) (E : HeatTreatmentProcessControlEvidence H) :
    HeatTreatmentProcessControlClosed H := by
  exact And.intro E.austenitizingTemperatureClosed
    (And.intro E.quenchingRateClosed
      (And.intro E.temperingTimeClosed
        (And.intro E.hardnessTargetClosed
          (And.intro E.temperatureUniformityClosed E.coolingCurveControlClosed))))

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse