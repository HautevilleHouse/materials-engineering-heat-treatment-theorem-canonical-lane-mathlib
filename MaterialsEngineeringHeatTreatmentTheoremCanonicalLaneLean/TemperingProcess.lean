import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean

structure TemperingProcessPackage where
  temperingTemperature : Prop
  temperingTime : Prop
  carbidePrecipitation : Prop
  retainedAusteniteDecomposition : Prop
  toughnessImprovement : Prop

structure TemperingProcessEvidence (T : TemperingProcessPackage) where
  temperingTemperatureClosed : T.temperingTemperature
  temperingTimeClosed : T.temperingTime
  carbidePrecipitationClosed : T.carbidePrecipitation
  retainedAusteniteDecompositionClosed : T.retainedAusteniteDecomposition
  toughnessImprovementClosed : T.toughnessImprovement

def TemperingProcessClosed (T : TemperingProcessPackage) : Prop :=
  T.temperingTemperature ∧ T.temperingTime ∧ T.carbidePrecipitation ∧
  T.retainedAusteniteDecomposition ∧ T.toughnessImprovement

theorem tempering_process_closed_from_evidence (T : TemperingProcessPackage) (E : TemperingProcessEvidence T) :
    TemperingProcessClosed T := by
  exact And.intro E.temperingTemperatureClosed
    (And.intro E.temperingTimeClosed
      (And.intro E.carbidePrecipitationClosed
        (And.intro E.retainedAusteniteDecompositionClosed E.toughnessImprovementClosed)))

end MaterialsEngineeringHeatTreatmentTheoremCanonicalLaneLean
end HautevilleHouse